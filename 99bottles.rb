count = 0
bottles = 99
while count < 99
    puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer." 
    bottles -= 1
    puts "Take one down, pass it around, #{bottles} bottles of beer on the wall."
    count += 1
    puts
end

