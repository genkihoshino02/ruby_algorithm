numbers_list = [3, 2, 1, 4, 5, 9, 8, 7, 6]

def bubble_sort(array)
  array.each_index do |i|
    (0...(array.size - i - 1)).each do |j|
      array[j], array[j + 1] = array[j + 1], array[j] if array[j] > array[j + 1]
    end
  end
  array
end

puts "Unsorted list: #{numbers_list}"
sorted_list = bubble_sort(numbers_list)
puts "Sorted list: #{sorted_list}"
