def jump_search(elements, element_to_find)
  elements_length = elements.length
  step = Math.sqrt(elements_length)

  prev = 0

  while elements[[step, elements_length].min.to_i - 1] < element_to_find
    prev = step
    step += Math.sqrt(elements_length)

    return -1 if prev >= elements_length
  end

  while elements[prev.to_i] < element_to_find
    prev += 1

    return -1 if prev == [step, elements_length].min
  end

  return prev.to_i if elements[prev.to_i] == element_to_find

  -1
end

# Test cases

# puts jump_search([10, 20, 30, 50, 60, 80, 100, 110, 130, 170], 110) # Output: 7
# puts jump_search([10, 20, 30, 50, 60, 80, 100, 110, 130, 170], 175) # Output: -1
# puts jump_search([10, 20, 30, 50, 60, 80, 100, 110, 130, 170], 170) # Output: 9
# puts jump_search([10, 20, 30, 50, 60, 80, 100, 110, 130, 170], 10) # Output: 0
# puts jump_search([10, 20, 30, 50, 60, 80, 100, 110, 130, 170], 90) # Output: -1
