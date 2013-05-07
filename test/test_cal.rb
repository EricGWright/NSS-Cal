require 'test/unit'
require 'cal'

class CalendarTest < Test::Unit::TestCase

  def test_month_header_june
    expected = "     June 1905"
    actual = Month.new(6, 1905).month_header
    assert_equal( expected, actual )
  end

  def test_month_length_non_leap_feb
    assert_equal( 28, Month.new(2, 2013).month_length )
  end

  def test_month_length_leap_feb
    assert_equal( 29, Month.new(2, 2016).month_length )
  end

  def test_month_length_sept
    assert_equal( 30, Month.new(9, 2013).month_length )
  end

  def test_month_length_december
    assert_equal( 31, Month.new(12, 2013).month_length )
  end
  def test_first_day_of_month_05_2013
    assert_equal( "Friday", Month.new(3, 2013).first_day )
  end
  def test_first_day_of_month_09_2013
    assert_equal( "Saturday", Month.new(6, 2013).first_day )
  end
  def test_first_day_of_month_12_2012
    assert_equal( "Sunday", Month.new(9, 2013).first_day )
  end

  def test04a_leap_year_huh_random
    m = Month.new( 1, 1837 )
    assert_equal(false, m.leap_year?)
  end

  def test04b_leap_year_huh_when_4
    yr  = Month.new(2,2012)
    assert_equal(true, yr.leap_year?)
  end

  def test04c_leap_year_huh_when_100
    yr  = Month.new(2,1900)
    assert_equal(false, yr.leap_year?)
  end

  def test04d_leap_year_huh_when_400
    yr  = Month.new(2,2000)
    assert_equal(true, yr.leap_year?)
  end

  def test05_display_month
    m = Month.new(5, 2013)
    string = <<-CALENDAR
      May 2013
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30 31
CALENDAR
    assert_equal(string, m.formatted_month)
  end

end
