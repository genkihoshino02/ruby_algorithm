numbers_list = [3, 2, 1, 4, 5, 9, 8, 7, 6]

def sorted?(arr)
  (0...(arr.length - 1)).each do |i|
    return false if arr[i] > arr[i+1]
  end
  true
end

def bogo_sort(arr)
  while !sorted?(arr)
    arr.shuffle!
  end
  arr
end

puts "Unsorted: #{numbers_list}"
sorted_list = bogo_sort(numbers_list)
puts "Sorted: #{sorted_list}"
