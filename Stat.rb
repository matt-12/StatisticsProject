f = File.new("./HPI_master (2).csv", "r")
data_string = f.read
f.close

data_points = data_string.split("\n")

e = 0
data_points.each do |data_point|
  data_points_values = data_point.split(",")
  data_value = data_points_values[9].to_f

  e = e + data_value
end


average = e/data_points.count
puts "Here is the Average:"
puts average

e = 0
data_points.each do |data_point|
  data_points_values = data_point.split(",")
  data_value = data_points_values[9].to_f

  e = e + (data_value-average)**2
end

standarddeviation = Math.sqrt(e/data_points.count)

puts "Here is the Standard Deviation:"
puts standarddeviation


