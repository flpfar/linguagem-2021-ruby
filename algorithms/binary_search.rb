# Given a sorted array arr[] of n elements, write a function to search a given element x in arr[].

def binary_search(elements, element_to_find)
  first = 0
  last = elements.length - 1
  mid = last / 2

  loop do
    return mid if elements[mid] == element_to_find

    break if first == last

    if element_to_find < elements[mid]
      last = mid - 1
    else
      first = mid + 1
    end

    mid = (first + last) / 2
  end

  -1
end

# puts binary_search([10, 20, 30, 50, 60, 80, 100, 110, 130, 170], 110) # Output: 7
# puts binary_search([10, 20, 30, 50, 60, 80, 100, 110, 130, 170], 175) # Output: -1
# puts binary_search([10, 20, 30, 50, 60, 80, 100, 110, 130, 170], 170) # Output: 9
# puts binary_search([10, 20, 30, 50, 60, 80, 100, 110, 130, 170], 10) # Output: 0
# puts binary_search([10, 20, 30, 50, 60, 80, 100, 110, 130, 170], 90) # Output: -1
