# You are given a list of n-1 integers and these integers are in the range of 1 to n.
# There are no duplicates in the list. Find the one missing integer in the list.

def find_missing_number(array)
  max_num = array.size + 1
  range_sum = max_num * (max_num + 1) / 2

  range_sum - array.sum
end

# puts find_missing_number([1, 2, 4, 6, 3, 7, 8]) # Output: 5
# puts find_missing_number([1, 2, 3, 5]) # Output: 4
# puts find_missing_number([3, 2, 4, 6, 1, 5, 9, 8]) # Output: 7
# puts find_missing_number([9, 8, 7, 5, 4, 3, 2, 1]) # Output: 6
