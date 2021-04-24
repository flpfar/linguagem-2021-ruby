# Given an array arr[] of n elements, write a function to search a given element x in arr[]

# Input : arr[] = {10, 20, 80, 30, 60, 50, 110, 100, 130, 170}
# x = 110;
# Output : 6
# Element x is present at index 6

# Input : arr[] = {10, 20, 80, 30, 60, 50, 110, 100, 130, 170}
# x = 175;
# Output : -1
# Element x is not present in arr[]

def linear_search(list_of_elements, element_to_find)
  index = 0
  while index < list_of_elements.length
    return index if list_of_elements[index] == element_to_find

    index += 1
  end
  -1
end

# Test cases

# puts linear_search([10, 20, 80, 30, 60, 50, 110, 100, 130, 170], 110) # Output: 6
# puts linear_search([10, 20, 80, 30, 60, 50, 110, 100, 130, 170], 175) # Output: -1
# puts linear_search([10, 20, 80, 30, 60, 50, 110, 100, 130, 170], 170) # Output: 9
# puts linear_search([10, 20, 80, 30, 60, 50, 110, 100, 130, 170], 10) # Output: 0
