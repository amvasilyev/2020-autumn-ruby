# frozen_string_literal: true

# Example class on how to implement own iterators to find elements in
class MyArray
  def initialize(arr)
    @arr = arr
  end

  def find
    @arr.each do |value|
      return value if yield(value)
    end
    nil
  end
end

my_array = MyArray.new([1, 3, 5, 7, 9])
pp my_array.find(&:even?)
