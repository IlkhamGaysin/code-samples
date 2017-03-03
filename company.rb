class Company
  attr_reader :name, :application, :feedback

  REQUIRED_SKILLS = %i(ruby javascript rails html css).freeze

  def initialize(name)
    @name = name
  end

  def recieve_application(application = nil)
    return raise AbsenseApplicationError unless application

    generate_feedback(application)
  end

  private

  def generate_feedback(application)
    return raise AbsenseCoverLetterError unless application.cover_letter

    skils = sanitized_skils(application)

    if skils.in? REQUIRED_SKILLS
      @feedback = "You are hired!"
    else
      @feedback = "Sorry, You don't match our demands"
    end
  end

  def sanitized_skils(application)
    application.skils.map(&:to_sym)
  end
end
