class RealEstate::Performance < Report
  include ReportRenderer

  def build_layout
    scorecard do
      template "string"
      component Something
    end

    performance_component do
      sheet "performance"
    end

    sheet "disclaimer"
    template "partners"
  end
end
