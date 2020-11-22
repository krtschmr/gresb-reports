class Report
  attr_accessor :response, :options

  def initialize(response, options = {})
    self.response = response
    self.options = options
  end
end
