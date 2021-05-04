# Given an array, right rotate it by k elements.

def reversal(array, rotation)
  result = []
  i = array.length - rotation

  array.length.times do
    result << array[i]

    i = (i + 1) % array.length
  end

  result
end

# Test cases

# puts reversal([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 3).to_s # 8 9 10 1 2 3 4 5 6 7
# puts reversal([121, 232, 33, 43 ,5], 2).to_s # 43 5 121 232 33
