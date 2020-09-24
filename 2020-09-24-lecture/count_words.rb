def main
  file_text = read_txt_file(File.expand_path('data.txt', __dir__))
  words_array = text_to_words(file_text)
  words_frequency = count_words(words_array)
  top_words = fetch_top_words(words_frequency)
  print_words(top_words)
end

def read_txt_file(file_name)
  File.read(file_name)
end

def text_to_words(text)
  text.downcase.scan(/[\p{Alpha}']+/)
end

def count_words(words_array)
  frequency = Hash.new(0)
  words_array.each do |word|
    frequency[word] += 1
  end
  frequency
end

def fetch_top_words(frequency)
  frequency.sort_by do |_word, count|
    -count
  end.first(10)
end

def print_words(words)
  puts 'Наиболее часто встречающиеся слова:'
  words.each do |word, count|
    puts "#{word}: #{count}"
  end
end

main if __FILE__ == $PROGRAM_NAME
