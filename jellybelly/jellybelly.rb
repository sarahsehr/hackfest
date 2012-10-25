class JellyBelly
  def get_string(number)
    if number % 3 == 0
      if number % 5 == 0
        "#{number} Jelly Belly!"
      else
        "#{number} Jelly"
      end
    elsif number % 5 == 0
      "#{number} Belly"
    else
      "#{number}"
    end
    
  end
  
  def print_all number
  
  end
end