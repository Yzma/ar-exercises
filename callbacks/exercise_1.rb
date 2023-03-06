require_relative '../setup'
require_relative '../exercises/exercise_1'
require_relative '../exercises/exercise_2'
require_relative '../exercises/exercise_3'
require_relative '../exercises/exercise_4'
require_relative '../exercises/exercise_5'
require_relative '../exercises/exercise_6'

puts "Exercise 8"
puts "----------"

@store1 = Store.find_by(id: 1)

@store1.employees.create(first_name: "Callback1", last_name: "Callback2", hourly_rate: 60)
