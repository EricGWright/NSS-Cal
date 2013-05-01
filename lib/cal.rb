class Month

  def initialize(month_number,year)
      @month_number = month_number
      @year = year
  end

  def name
    monthNames = ['January','February','March','April','May','June','July','August','September','October','November','December']
    monthNames[@month_number - 1]
  end

end
