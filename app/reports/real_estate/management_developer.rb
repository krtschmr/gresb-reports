class RealEstate::ManagementDeveloper < Report
  include ReportRenderer

  def build_layout
    scorecard do
      template "string"
      component Something
      component Swag
      component BubbleChart
      template "something.haml"
      sheet "Energy"
      sheet "Water"
    end

    management_component do
      sheet "Management"
      sheet "CoolCharts"
    end

    development_component do
      sheet "Development"
      sheet "CoolCharts"
    end

    sheet "disclaimer"
    template "partners"
  end
end
