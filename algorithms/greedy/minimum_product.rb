def minimum_product(array)
  negative_count = array.count { |item| item < 0 }
  zero_count = array.count(0)

  if negative_count.zero?
    return zero_count.positive? ? 0 : array.min
  end
  
  product = array.reduce(1) { |prod, n| n != 0 ? prod * n : prod }
  
  negative_count.even? ? product / array.min : product
end

puts minimum_product([-1, -1, -2, 4, 3]) # -24
puts minimum_product([-1, 0]) # -1
puts minimum_product([0, 0, 0]) # 0
