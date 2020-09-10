# frozen_string_literal: true

class BookInStockFullTest
  attr_accessor :isbn
  attr_reader :price
  attr_writer :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = price
  end

  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end

  def price_in_copecks
    Integer(@price * 100 + 0.5)
  end

  def price_in_copecks=(copecks)
    @price = copecks / 100.0
  end
end

book_one = BookInStockFullTest.new('isbn-1', 1155.5)
book_two = BookInStockFullTest.new('isbn-2', 1253.5)

pp book_one
puts book_one.isbn
book_one.isbn = 'isbn-3'
book_one.price = '12.5'
pp book_one

puts book_two.price_in_copecks
book_two.price_in_copecks = 10527
pp book_two
