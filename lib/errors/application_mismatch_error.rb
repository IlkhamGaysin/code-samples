module Errors
  class ApplicationMismatchError < NotImplementedError
    def initialize
      super("a passed argument should be an instance of Application")
    end
  end
end
