numbers_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# Linear search algorithm
# Time complexity: O(n)
# Space complexity: O(1)
# This algorithm iterates through each element in the array and checks if it matches the target value.
# Returns the index of the target if found, otherwise returns nil.

def linear_search(arr, target)
  arr.each_with_index do |element, index|
    return index if target == element
  end
  nil
end

# Test cases
p linear_search(numbers_list, 5)  # Expected output: 4
p linear_search(numbers_list, 10) # Expected output: 9
p linear_search([], 1)            # Expected output: nil (edge case: empty array)
p linear_search(numbers_list, 4)  # Expected output: 3
p linear_search(numbers_list, 1)  # Expected output: 0
