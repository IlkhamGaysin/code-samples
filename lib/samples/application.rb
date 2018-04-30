# frozen_string_literal: true

module Samples
  class Application
    attr_reader :employee, :cover_letter, :company

    def initialize(company, employee, cover_letter = nil)
      @company      = company
      @employee     = employee
      @cover_letter = cover_letter
    end
  end
end
