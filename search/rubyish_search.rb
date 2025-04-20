numbers_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Rubyish search algorithm
# Time complexity: O(n)
# Space complexity: O(1)
# This algorithm uses Ruby's built-in index method to find the index of the target value in the array.
def rubyish_search(arr, target)
  arr.index(target)
end

# Test cases
p rubyish_search(numbers_list, 5)  # Expected output: 4
p rubyish_search(numbers_list, 10) # Expected output: 9
p rubyish_search([], 1)            # Expected output: nil (edge case: empty array)
p rubyish_search(numbers_list, 4)  # Expected output: 3
p rubyish_search(numbers_list, 1)  # Expected output: 0
