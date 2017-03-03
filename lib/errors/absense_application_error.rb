module Errors
  class AbsenseApplicationError < NotImplementedError
    def initialize
      super("Application should be incldued")
    end
  end
end
