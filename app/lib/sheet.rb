class Sheet < ReportComponent
  def render
    "<sheet options: #{options}>Sheet:#{@sheet_name}</sheet>"
  end
end
