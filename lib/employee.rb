class Employee < Person
  attr_accessor :skills
  attr_reader :application

  def initialize(age, name, skills = [])
    super(age, name)

    @skills = skills
  end

  def build_application(cover_letter = nil)
    @application = Application.new(self, cover_letter)
  end

  def apply_to(company)
    return raise Errors::CompanyMismatchError unless company.is_a?(Company)

    company.recieve_application(application)
  end
end
