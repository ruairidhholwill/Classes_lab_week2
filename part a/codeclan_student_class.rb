class Student

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

def get_name
  @name
end

def set_name(new_name)
  @name = new_name
end

def cohort_name
  @cohort
end

def set_cohort_name(new_cohort)
  @cohort = new_cohort
end

def can_talk
  return "I can talk!"
end

def fav_programming_language(language)
  return "I love #{language}!"
end









end
