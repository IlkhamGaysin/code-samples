class Company
  attr_reader :name

  REQUIRED_SKILLS = %i(ruby javascript rails html css).freeze

  def initialize(name)
    @name = name
  end

  def recieve_application(application = nil)
    return raise Errors::AbsenseApplicationError unless application
    return raise Errors::ApplicationMismatchError unless application.is_a?(Application)

    generate_feedback(application)
  end

  private

  def generate_feedback(application)
    return raise Errors::AbsenseCoverLetterError unless application.cover_letter

    skills = sanitized_skills(application)

    if REQUIRED_SKILLS.any? { |skill| skills.include?(skill) }
      "You are hired!"
    else
      "Sorry, You don't match our demands"
    end
  end

  def sanitized_skills(application)
    skills = application.employee.skills

    skills.map(&:to_sym)
  end
end
