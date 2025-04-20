numbers_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# binary search algorithm 
# Time complexity: O(log n)
# Space complexity: O(1)
# This algorithm divides the array in half and checks if the target value is in the left or right half.

def binary_search(arr, target)
  left = 0
  right = arr.length - 1

  while left <= right 
    mid = left + (right - left) / 2
    if arr[mid] == target
      return mid 
    elsif arr[mid] < target
      left = mid + 1
    else
      right = mid - 1
    end
  end
    
  nil
end

# Test cases
p binary_search(numbers_list, 5)  # Expected output: 4
p binary_search(numbers_list, 10) # Expected output: 9
p binary_search([], 1)            # Expected output: nil (edge case: empty array)
p binary_search(numbers_list, 4)  # Expected output: 3
p binary_search(numbers_list, 1)  # Expected output: 0
