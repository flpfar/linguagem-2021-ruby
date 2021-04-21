def maximize_array(array, k)
  k.times do
    min, min_index = array.each_with_index.min
    break if min == 0

    array[min_index] = -array[min_index]
  end

  array.sum
end

# Test cases

# puts maximize_array([-2, 0, 5, -1, 2], 4)
# puts maximize_array([9, 8, 8, 5], 3)
