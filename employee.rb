class Employee < Person
  attr_accessor :skils
  attr_reader :application

  def initialize(age, name, skils = [])
    super(age, name)

    @skils = skils
  end

  def build_application(cover_letter = nil)
    @application = Application.new(self, cover_letter)
  end

  def apply_to(company)
    return raise CompanyMismatchError unless company.is_a?(Company)

    company.recieve_application(application)
  end

  def get_feedback_from(company)
    return raise CompanyMismatchError unless company.is_a?(Company)

    company.feedback
  end
end
