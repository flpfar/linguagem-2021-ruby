def selection_sort(array)
  (array.size - 1).times do |i|
    min, min_index = array[i], i
    ((i + 1)...array.size).each do |j|
      min, min_index = array[j], j if array[j] < min
    end

    array[i], array[min_index] = array[min_index], array[i]
  end

  array
end

# Test cases

# puts selection_sort([64, 25, 12, 22, 11]).to_s
# puts selection_sort([5, 1, 3, 8, 6]).to_s
# puts selection_sort([1, 2, 3, 4, 5]).to_s
# puts selection_sort([30, 84, 93, 40, 29, 80, 47, 6, 42, 83]).to_s
# puts selection_sort([61, 15, 18, 46, 16, 28, 5, 39, 32, 58]).to_s
