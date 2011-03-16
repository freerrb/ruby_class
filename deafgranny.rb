puts "What do you want to say to Granny?"
while true
    ask = gets.chomp
    if ask == "BYE BYE BYE"
        puts "GOODBYE YOU AWFUL PERSON!"
        exit
    end
    if ask == ask.upcase
        year = rand(20) + 1930
        puts "NO, NOT SINCE #{year}!"
    else
        puts "HUH?! SPEAK UP SONNY!"
    end
end
