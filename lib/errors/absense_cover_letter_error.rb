module Errors
  class AbsenseCoverLetterError < NotImplementedError
    def initialize
      super("Cover letter should be incldued")
    end
  end
end
