require 'test/unit'
require 'cal'

class CalendarIntegrationTest < Test::Unit::TestCase

  def test01_random_non_leap_year
    assert_equal(`cal 2 1837`, `ruby lib/cal.rb 2 1837`)
  end

  def test02_leap_year_when_4
    assert_equal(`cal 2 2012`, `ruby lib/cal.rb 2 2012`)
  end

  def test03_not_leap_year_when_100
    assert_equal(`cal 2 1900`, `ruby lib/cal.rb 2 1900`)
  end

  def test04_leap_year_when_400
    assert_equal(`cal 2 2000`, `ruby lib/cal.rb 2 2000`)
  end

end
