numbers_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

def binary_search_rubyway(arr, target)
  left = 0
  right = arr.length - 1

  while left <= right
    mid = left + (right - left) / 2
    case arr[mid] <=> target
    when 0 then return mid
    when -1 then left = mid + 1
    when 1 then right = mid - 1
    end
  end
end

# Test cases
p binary_search_rubyway(numbers_list, 5)  # Expected output: 4
p binary_search_rubyway(numbers_list, 10) # Expected output: 9
p binary_search_rubyway([], 1)            # Expected output: nil (edge case: empty array)
p binary_search_rubyway(numbers_list, 4)  # Expected output: 3
p binary_search_rubyway(numbers_list, 1)  # Expected output: 0
