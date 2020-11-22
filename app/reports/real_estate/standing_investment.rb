class RealEstate::StandingInvestment < Report
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

    performance_component do
      sheet "Leadership"
      sheet "Water Consumption"
    end

    management_component do
      sheet "Management"
      sheet "CoolCharts"
    end

    sheet "disclaimer"
    template "partners"
  end
end
