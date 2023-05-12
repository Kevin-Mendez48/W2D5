require "pry"
class Item

  def self.valid_date?(str)
    dates = str.split("-")
    year = dates[0].to_i
    month = dates[1].to_i
    day = dates[2].to_i
    if year > 2100 || year < 1900
        puts false
        return false
    end
    if month > 12 || month < 0
        puts false
        return false
    end
    if day > 31 || day < 0
        puts false
        return false
    end
    puts true
    return true
end
  attr_reader :title, :deadline, :description
def initialize (title, deadline, description)
  if !self.class.valid_date?(deadline)
    puts "Invalid date"
    return
  end
  @title = title
  @deadline = deadline
  @description = description
end
def deadline=(new_deadline)
  if !self.class.valid_date?(deadline)
    puts "Invalid date"
    return
  end
    @deadline = new_deadline

end

def title=(new_title)
  @title = new_title
end
def description=(new_description)
  @description = new_description
end

end
