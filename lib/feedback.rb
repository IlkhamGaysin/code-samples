class Feedback
  def initialize(company, skills)
    @company = company
    @skills  = skills
  end

  def message
    if @company.required_skills.any? { |skill| skills.include?(skill) }
      'You are hired!'
    else
      "Sorry, You don't match our demands"
    end
  end
end
