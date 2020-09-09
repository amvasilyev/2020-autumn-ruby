def say_goodnight(name)
    "Good night, #{name.capitalize}"
end

# Вызываем метод
puts say_goodnight("John-Boy")
puts say_goodnight("mary-Ellen")
# Не будет работать!
# puts say_goodnight(42)
