numbers_list = [5, 3, 8, 4, 2, 7, 1, 6]

def cocktail_sort(array)
  array_size = array.size
  swapped = true
  start_index= 0
  end_index = array_size - 1

  while swapped do
    swapped = false 
    (start_index...end_index).each do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    break unless swapped

    swapped  = false 
    end_index -= 1
    (end_index - 1).downto(start_index).each do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    start_index += 1
  end

  array
end 

puts "Unsorted list: #{numbers_list}"
sorted_list = cocktail_sort(numbers_list)
puts "Sorted list: #{sorted_list}"
