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
    [1..number].each do |i|
      puts get_string(i)
    end
  end
end


if __FILE__==$0
  jellybelly = JellyBelly.new
  jellybelly.print_all(100)
end