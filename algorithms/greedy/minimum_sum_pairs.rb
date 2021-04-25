def minimum_sum(array)
  min_value = array.min

  min_value * (array.size - 1)
end

# Test cases

# puts minimum_sum([3, 4]) # Output: 3
# puts minimum_sum([2, 4, 1, 3]) # Output: 3
# puts minimum_sum([7, 3, 2, 5]) # Output: 6
