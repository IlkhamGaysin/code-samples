# frozen_string_literal: true

require_relative 'person'

module Samples
  class Employee < Person
    attr_accessor :skills
    attr_reader :application

    def initialize(age, name, skills = [])
      super(age, name)

      @skills = skills
    end

    def build_application_to(company, cover_letter = nil)
      @application = Application.new(self, company, cover_letter)
    end

    def apply_to(company)
      company.recieve_application(application)
    end
  end
end
