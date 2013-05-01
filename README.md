NSS-Cal
=======

Calendar project for the Nashville Software School.
This program is designed to use TDD while developing a Ruby program equivalent to Unix Cal.
It should display a calendar including the days of the month between years 1800 and 3000 with leap years and other irregularities taken into consideration.
The result should look just like the output from Unix Cal.

Methods necessary to complete the program:
  month_header(month, year)
  day_header
  get_first_of_month(month, year)
  leap_year
  number_of_days_in_month
  format_month(month,year)

Instructions:

Cal Part I - Git repository with Integration Tests

1. Create a public repository on Github
2. Base the contents of your repository on NSS-Linked-List-Spring-2013.
  - Copy the Rakefile
  - Create a test folder
  - Create a file test_cal_integration.rb that imitates the setup of test_linked_list
3. Write integration tests for cal
  - The example we wrote on the board was "assert_equal `cal 2 2013`, `ruby cal.rb...
  - This should cover the edge cases of leap years (4, 100, and 400 years) and months that have more or less weeks than usual.
4. Use the sample cal implementation here (https://gist.github.com/elizabrock/5468471) to make sure that your integration tests pass.
5. Commit your changes to your repository
6. Paste the repository link into this quiz


Cal Part II - Unit Tests

1. Break your cal program down into what you guess to be the methods you will have to write to complete the program.
  - Put the list in your README
2. Write tests for one of the simplest methods (e.g. month_header)
3. Make the tests pass
4. Commit and push to github
5. Submit this quiz with a link to your repository


Cal Part III - Get help working through the rest of your tests (You can submit these multiple times)

With the goal of getting your integration tests to pass in the end, continue writing unit tests and methods to build up your implementation of cal.
If you need feedback, submit this quiz with a link to the area you are having trouble with.


Cal Part IV - Submit your final implementation

Your program should be able to work for months/years between 1800 and 3000.
