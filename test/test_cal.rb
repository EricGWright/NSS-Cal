require 'test/unit'
require 'cal'

class CalendarTest < Test::Unit::TestCase

  def test01_header_displays_properly
    m = Month.new(5,2013)
    m2 = Month.new(7,2013)
    assert_equal("May", m.name)
    assert_equal("July", m2.name)
  end

end
