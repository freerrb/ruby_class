seq = File.open(ARGV[0])
headers = File.open(ARGV[1],"w")

seq.grep(/^>/) do |line|
    headers.puts line
 end

