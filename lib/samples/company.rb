# frozen_string_literal: true

module Samples
  class Company
    REQUIRED_SKILLS = %i(ruby javascript rails html css).freeze

    attr_reader :name

    def initialize(name, skills)
      @name   = name
      @skills = skills
    end

    def recieve_application(application)
      Feedback.new(self, application)
    end
  end
end
