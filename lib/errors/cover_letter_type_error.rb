module Errors
  class CoverLetterTypeError < TypeError
    def initialize
      super("the second argument should be String")
    end
  end
end
