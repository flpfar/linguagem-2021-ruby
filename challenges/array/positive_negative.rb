def positive_and_negative(array)
  pos_index = 0
  neg_index = 1

  loop do
    pos_index += 2 while pos_index < array.size && array[pos_index] >= 0
    neg_index += 2 while neg_index < array.size && array[neg_index].negative?

    if pos_index < array.size && neg_index < array.size
      array[pos_index], array[neg_index] = array[neg_index], array[pos_index]
    else
      break
    end
  end

  array
end

# Test cases

# puts positive_and_negative([1, -3, 5, 6, -3, 6, 7, -4, 9, 10]).to_s # Output: [1, -3, 5, -3, 6, 6, 7, -4, 9, 10]
# puts positive_and_negative([-1, 3, -5, 6, 3, 6, -7, -4, -9, 10]).to_s # Output: [3, -1, 6, -5, 3, -7, 6, -4, 10, -9]
