module ReportRenderer
  attr_accessor :components

  def build_components!
    self.components = []
    build_layout
  end

  def layout(&block)
    block.call
  end

  def render
    build_components!
    @html = components.collect do |target|
      if target.is_a?(Hash)
        wrapper, insides = target.to_a.first
        inside = insides.collect do |clazz, args|
          clazz.new(self, args).render
        end.join("\n\t")

        "<div id='#{wrapper}'>\n\t#{inside}\n</div>"
      else
        clazz, arg = target
        clazz.new(self, arg).render
      end
    end.flatten.join("\n")
  end

  def scorecard
    @parent = :scorecard
    yield if block_given?
  ensure
    if @parent
      components << { @parent => @collected_components }
      @collected_components = []
    end
    @parent = nil
  end

  def performance_component
    @parent = :performance_component
    yield if block_given?
  ensure
    if @parent
      components << { @parent => @collected_components }
      @collected_components = []
    end
    @parent = nil
  end

  def development_component
    @parent = :development_component
    yield if block_given?
  ensure
    if @parent
      components << { @parent => @collected_components }
      @collected_components = []
    end
    @parent = nil
  end

  def management_component
    @parent = :management_component
    yield if block_given?
  ensure
    if @parent
      components << { @parent => @collected_components }
      @collected_components = []
    end
    @parent = nil
  end

  def disclaimer
    @parent = :disclaimer
    yield if block_given?
  ensure
    if @parent
      components << { @parent => @collected_components }
      @collected_components = []
    end
    @parent = nil
  end

  def template(path)
    build(Template, path)
  end

  def component(component)
    build(component)
  end

  def sheet(sheet_name)
    build(Sheet, sheet_name)
  end

  def build(clazz, arg = nil)
    if @parent
      @collected_components ||= []
      @collected_components << [clazz, arg]
    else
      components << [clazz, arg]
    end
  end
end
