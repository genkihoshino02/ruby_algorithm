numbers_list = [3, 2, 1, 4, 5, 9, 8, 7, 6]

def sorted?(arr)
  (0...(arr.length - 1)).all? { |i| arr[i] <= arr[i+1] }
end

def bogo_sort(arr)
  arr.shuffle! until sorted?(arr)
  arr
end

puts "Unsorted: #{numbers_list}"
sorted_list = bogo_sort(numbers_list)
puts "Sorted: #{sorted_list}"
