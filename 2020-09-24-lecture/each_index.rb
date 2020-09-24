[6, 7, 8, 7].each_with_index do |num, position|
  puts "#{position}: #{num}, #{num**position}"
end

pp [10, 12, 3, 17, 79].delete_if { |num| num**3 > 100 }
