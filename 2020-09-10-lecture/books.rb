# frozen_string_literal: true

require 'csv'
require_relative 'book_in_stock'

class Books
  def initialize
    @books = []
  end

  def read_in_csv_data(file_name)
    CSV.foreach(file_name, headers: true) do |row|
      book = BookInStock.new(row['ISBN'], row['Price'])
      @books.append(book)
    end
  end

  def total_value_in_stock
    can_not_call_me
    @books.reduce(0.0) { |sum, book| sum + book.price }
  end

  def book_count_by_isbn
    isbn_hash = Hash.new(0)
    @books.each do |book|
      isbn_hash[book.isbn] += 1
    end
    isbn_hash
  end

  private

  def can_not_call_me
    puts 'Uncallable from outside!'
  end
end
