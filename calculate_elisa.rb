require 'rubygems'
require 'fastercsv'

data = FasterCSV.read(ARGV[0])

# y = mx + b

normal_data1 = []
normal_data2 = []
avg_data = []

data[1..-1].each do |row|
    normal_data1 << row[0].to_f
    normal_data2 << row[1].to_f
    avg_data << (row[0].to_f + row[1].to_f) / 2.0
end

concentrations = %w{ 0 0.25 0.5 1 2.5 5 7.5 }.map do |x|
    x.to_f
end

y_points = avg_data
x_points = concentrations

sum_x = 0
sum_xx = 0

x_points.each do |x|
    sum_x += x
    sum_xx += (x * x)
end

avg_x = sum_x / x_points.length.to_f

sum_y = 0
y_points.each do |y|
    sum_y += y
end

avg_y = sum_y / y_points.length.to_f

# sum of xy
sum_xy = 0
x_points.each_index do |i|
    sum_xy += (x_points[i] * y_points[i])
end

m = (sum_xy - (sum_x * avg_y)) / (sum_xx - (sum_x * avg_x))
b = avg_y - (m * avg_x)

puts "Slope = #{m}"
puts "Y-intercept = #{b}"

result_file = File.open("results.csv", "w")
result_file.puts ["Mouse", "Concentration (ng)"].to_csv
# time point += 4
tp = 0
# mouse number += 1
mouse = 1


data.each do |row| 
        row[2..-1].each_slice(2) do |m1, m2|
        avg_mouse_value = (m1.to_f + m2.to_f) / 2.0
        x = (avg_mouse_value - b) / m
        result_file.puts(["#{tp}-#{mouse}" ,x].to_csv)
        tp += 4
    end
    tp = 0
    mouse += 1
end



