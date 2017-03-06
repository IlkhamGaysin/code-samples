module Errors
  class EmployeeMismatchError < NotImplementedError
    def initialize
      super("the first argument should be an instance of Employee")
    end
  end
end
