# Given an array with all distinct elements, find the largest three elements.

def find_three(array)
  first = second = third = array.first

  array.each do |item|
    if item > first
      third = second
      second = first
      first = item
    elsif item > second
      third = second
      second = item
    elsif item > third
      third = item
    end
  end

  [first, second, third]
end

# Test cases

# puts find_three([10, 4, 3, 50, 23, 90]).to_s # 90, 50, 23
# puts find_three([12, 13, 1, 10, 34, 1]).to_s # 34, 13, 12
