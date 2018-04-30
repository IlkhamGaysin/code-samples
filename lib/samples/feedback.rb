# frozen_string_literal: true

module Samples
  class Feedback
    def initialize(company, application)
      @company      = company
      @application  = application
    end

    def message
      if @company.required_skills.any? { |skill| skills.include?(skill) }
        'You are hired!'
      else
        "Sorry, You don't match our demands"
      end
    end

    private

    def skills
      application.employee.skills
    end
  end
end
