class ReportComponent
  attr_accessor :report, :arg

  delegate :options, to: :report

  def initialize(report, arg = nil)
    self.report = report
    self.arg = arg
  end
end
