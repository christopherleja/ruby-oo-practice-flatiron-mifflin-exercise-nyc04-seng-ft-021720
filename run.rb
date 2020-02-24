require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

michael = Manager.new("Michael Scott", "Sales", 40)
jim = Employee.new("Jim Halpert", 1000, michael)
creed = Employee.new("Creed", 2000, michael)
andy = Employee.new("Andy Bernard", 1400, michael)
dwight = Employee.new("Dwight Schrute", 900, michael)
stanley = Employee.new("Stanley", 3000, michael)


binding.pry
puts "done"