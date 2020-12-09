# https://adventofcode.com/2020/day/1

numbers = []

file = File.new(File.dirname(__FILE__) + '/input')
file.each { |line| numbers << /\d+/.match(line)[0].to_i } # remove line jump

numbers.each_with_index do |n, i|
  temp_arr = numbers[i + 1..-1]

  temp_arr.each do |el|
    p n * el if n + el == 2020
  end
end

# 646779
