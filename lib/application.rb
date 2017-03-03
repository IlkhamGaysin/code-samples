class Application
  attr_reader :employee, :cover_letter

  def initialize(employee, cover_letter = nil)
    return raise Errors::EmployeeMismatchError unless employee.is_a?(Employee)

    @employee = employee
    @cover_letter = cover_letter
  end
end
