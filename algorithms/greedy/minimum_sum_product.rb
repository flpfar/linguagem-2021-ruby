def minimum_sum(arr1, arr2, changes)
  diff = 0
  result = 0
  temp = 0

  arr1.size.times do |i|
    current_product = arr1[i] * arr2[i]
    result += current_product

    if current_product.negative? && arr2[i].negative?
      temp = (arr1[i] + 2 * changes) * arr2[i]
    elsif current_product.negative? && arr1[i].negative?
      temp = (arr1[i] - 2 * changes) * arr2[i]
    elsif current_product.positive? && arr1[i].negative?
      temp = (arr1[i] + 2 * changes) * arr2[i]
    elsif current_product.positive? && arr1[i].positive?
      temp = (arr1[i] - 2 * changes) * arr2[i]
    end

    current_diff = (current_product - temp).abs

    diff = current_diff if current_diff > diff
  end

  result - diff
end

# Test cases

# puts minimum_sum([1, 2, -3], [-2, 3, -5], 5) # Output: -31
# puts minimum_sum([2, 3, 4, 5, 4], [3, 4, 2, 3, 2], 3) # Output: 25
