# frozen_string_literal: true

sum = 0
[1, 2, 3, 4].each do |value|
  square = value * value
  sum += square
end
puts sum

value = 'some shape'
[1, 2].each do |value|
  puts "#{value}: #{value}"
end
puts value
