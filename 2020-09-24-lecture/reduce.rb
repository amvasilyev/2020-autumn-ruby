result = [1, 3, 5, 7].reduce(0) do |sum, element|
  puts "sum: #{sum}, element: #{element}"
  sum + element
end

pp result
