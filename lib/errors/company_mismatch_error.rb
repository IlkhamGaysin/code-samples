module Errors
  class CompanyMismatchError < NotImplementedError
    def initialize
      super("a passed argument should be an instance of Company")
    end
  end
end
