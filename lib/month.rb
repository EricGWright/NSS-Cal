class Month

  MONTHS = %w{ January February March April May June July August September October November December }

  def initialize(month, year)
    @month = month
    @year = year
  end

  def month_length
    daysInMonth=[31,28,31,30,31,30,31,31,30,31,30,31]
    if @month - 1 == 1 && self.leap_year?
      return 29
    else
      daysInMonth[@month - 1]
    end
  end

  def first_day #Zeller's Congruence
    m = @month
    y = @year
    if m == 1 || m == 2
      m += 12
      y = @year - 1
    end
    start_num = ( 1 + ( (13*(m + 1) )/5) + (y%100) + ((y%100)/4) + ((y/100).floor/4) + (5*(y/100).floor) )%7
    days_of_the_week = ['Saturday','Sunday','Monday','Tuesday','Wednesday','Thursday','Friday']
    days_of_the_week[start_num]
  end

  def leap_year?
    if @year % 400 == 0
      return true
    elsif @year % 100 == 0
      return false
    elsif @year % 4 == 0
      return true
    else
      return false
    end
  end

  def formatted_month
    start = self.first_day
    days = ['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday',]
    startday = days.index(start)

    result = " "
    startday.times do
      result.prepend("   ")
    end

    result += (1..9).to_a.join("  ")
    result += " "
    result += (10..self.month_length).to_a.join(" ")
    output = result.scan(/.{1,21}/)
    output.each do |o|
      o.rstrip!
    end

    month_name = MONTHS[@month - 1]
    first_line = "#{month_name} #{@year}".center(20).rstrip
    second_line = "Su Mo Tu We Th Fr Sa"
    output.unshift(second_line).unshift(first_line)
    # output = output.join("\n")
    # output << "\n"
  end

end
