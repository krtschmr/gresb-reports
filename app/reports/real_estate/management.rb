class RealEstate::Management < Report
  include ReportRenderer

  def build_layout
    scorecard do
      template "stringthemanagement"
    end

    management_component do
      sheet "management"
    end

    sheet "disclaimer"
    template "partners"
  end
end
