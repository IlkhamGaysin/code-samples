module Errors
  class CoverLetterTypeError < NotImplementedError
    def initialize
      super("the second argument should be String")
    end
  end
end
