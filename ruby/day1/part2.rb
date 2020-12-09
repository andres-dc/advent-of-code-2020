# https://adventofcode.com/2020/day/1

numbers = []

file = File.new(File.dirname(__FILE__) + '/input')
file.each { |line| numbers << /\d+/.match(line)[0].to_i } # remove line jump

numbers.each_with_index do |num1, i|
  temp_arr1 = numbers[i + 1..-1]

  temp_arr1.each_with_index do |num2, j|
    temp_arr2 = numbers[j + 1..-1]

    temp_arr2.each do |num3|
      p num1 * num2 * num3 if num1 + num2 + num3 == 2020
    end
  end
end

# 246191688
