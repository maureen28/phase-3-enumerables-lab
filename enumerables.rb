require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

# given an array of spicy foods, **return an array of strings**
# with the names of each spicy food
def get_names(spicy_foods)
  # your code here
  spicy_foods.map {|food| food[:name]}

end


# given an array of spicy foods, **return an array of hashes** 
# where the heat level of the food is greater than 5
def spiciest_foods(spicy_foods)
  # your code here
  spicy_foods.filter{|food| food[:heat_level] >5}
 
end


# given an array of spicy foods, **output to the terminal**
# each spicy food in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: you can use * with a string to produce the correct number of 🌶 emoji. 
# "hello" * 3 == "hellohellohello"
def print_spicy_foods(spicy_foods)
  # your code here
  spicy_foods.each do |food|
    heat_level = "🌶" *food[:heat_level]
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{heat_level}"
  end
 
end

# given an array of spicy foods and a string representing a cuisine, **return a single hash**  
# for the spicy food whose cuisine matches the cuisine being passed to the method
def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  # your code here
  spicy_foods.find {|food|food[:cuisine] == cuisine}

end

# Given an array of spicy foods, **return an array of hashes** 
# sorted by heat level from lowest to highest
def sort_by_heat(spicy_foods)
  # your code here
  spicy_foods.sort_by {|food|food[:heat_level]}
end

# given an array of spicy foods, output to the terminal ONLY 
# the spicy foods that have a heat level greater than 5, in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: Try to use methods you've already written to solve this!
def print_spiciest_foods(spicy_foods)
  # your code here
  print_spicy_foods(spiciest_foods(spicy_foods))
end

# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  # your code here
  heat_level = 0
  spicy_foods.each {|food|heat_level+=food[:heat_level]}
  heat_level/spicy_foods.length
end

# list = [1, 4, 7]
# puts each_elem = list.each
# puts each_elem.next
# class Person
#     attr_accessor :age
#     def initialize(age)
#         @age = age
#     end

#     def <=>(other)
#         @age <=> other.age
#     end
# end

# puts p1 = Person.new(28)
# puts p2 = Person.new(20)
# puts [p1, p2].sort

# class Fibonacci
#   attr_accessor :cap
 
#   def initialize(cap)
#       @cap = cap
#   end

#   include Enumerable # including the module
 
#   def each(&block)
#       first = 1
#       second = 1
#       third = 2
#       curr = 0
#       while curr < cap  do
#           curr += 1
#           yield first
#           first = second
#           second = third
#           third = first + second
#       end
#   end
# end

# puts Fibonacci.new(10).to_a