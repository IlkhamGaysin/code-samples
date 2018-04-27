class Company
  attr_reader :name

  REQUIRED_SKILLS = %i(ruby javascript rails html css).freeze

  def initialize(name, skills)
    @name   = name
    @skills = skills
  end

  def recieve_application(application = nil)
    return raise Errors::AbsenseApplicationError unless application
    return raise Errors::ApplicationMismatchError unless application.is_a?(Application)

    Feedback.new(self, application.employee.skills)
  end
end
