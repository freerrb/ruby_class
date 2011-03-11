=begin
puts "What is your first name?"
first = gets.chomp
puts "What is your middle name?"
middle = gets.chomp
puts "What is your last name?"
last = gets.chomp 

print "Hello #{first} #{middle} #{last}, it's nice to meet you." 
=end

puts "What is your favorite number?"
favnum = gets.chomp
newfav = favnum.to_i
newfav += 1
puts "This number: #{newfav}, is bigger and better than yours."
