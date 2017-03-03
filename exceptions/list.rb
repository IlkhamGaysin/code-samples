module Exceptions
  class CompanyMismatchError < NotImplementedError
    def initialize
      super("a passed argument should be an instance of Company")
    end
  end

  class AbsenseApplicationError < NotImplementedError
    def initialize
      super("Application should be incldued")
    end
  end

  class AbsenseCoverLetterError < NotImplementedError
    def initialize
      super("Cover letter should be incldued")
    end
  end

  class EmployeeMismatchError < NotImplementedError
    def initialize
      super("a passed argument should be an instance of Employee")
    end
  end
end
