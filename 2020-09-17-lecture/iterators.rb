def two_times
  yield
  yield
end

two_times { puts 'Hello' }

def fib_up_to(max)
  i1 = 1
  i2 = 1
  while i1 <= max
    yield(i1)
    i1, i2 = i2, i1 + i2
  end
end

fib_up_to(1000) { |f| print f, ' ' }
puts

sum = 0
fib_up_to(1000) { |num| sum += num }
puts "Сумма: #{sum}"
