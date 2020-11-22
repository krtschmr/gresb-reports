class RealEstate::Development < Report
  include ReportRenderer

  def build_layout
    scorecard do
      template "string"
      component Something
    end

    development_component do
      sheet "Management"
      sheet "CoolCharts"
    end

    sheet "disclaimer"
    template "partners"
  end
end
