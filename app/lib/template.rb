class Template < ReportComponent
  def render
    "<template options: #{options}>Template:#{arg} </template>"
  end
end
