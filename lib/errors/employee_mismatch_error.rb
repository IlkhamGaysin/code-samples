module Errors
  class EmployeeMismatchError < NotImplementedError
    def initialize
      super("a passed argument should be an instance of Employee")
    end
  end
end
