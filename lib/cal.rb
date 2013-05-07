require_relative 'month'
require_relative 'year'

if ARGV.length == 1
  year = ARGV[0].to_i
  month = 1
  calendar = Year.new(month, year)
  calendar.formatted_year
else
  month = ARGV[0].to_i
  year = ARGV[1].to_i
  calendar = Month.new(month, year)
  puts calendar.formatted_month
end
