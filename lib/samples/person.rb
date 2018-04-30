# frozen_string_literal: true

module Samples
  class Person
    attr_reader :age, :name

    def initialize(age, name)
      @age  = age
      @name = name
    end
  end
end
