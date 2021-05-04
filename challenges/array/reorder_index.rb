def reorder_index(array, indexes)
  result = Array.new(array.size)

  indexes.each_with_index do |index, i|
    result[index] = array[i]

    indexes[i] = i
  end

  [result, indexes]
end

# Test cases

# puts reorder_index([10, 11, 12], [1, 0, 2]).to_s # Output: [11, 10, 12] [0, 1, 2]
# puts reorder_index([50, 40, 70, 60, 90], [3, 0, 4, 1, 2]).to_s # Output: [40, 60, 90, 50, 70] [0, 1, 2, 3, 4]
