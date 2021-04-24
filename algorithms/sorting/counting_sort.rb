def counting_sort(array)
  counting_array = create_counting_array(array)

  sorted = Array.new(array.length)

  array.each do |item|
    sorted[counting_array[item] - 1] = item
    counting_array[item] -= 1
  end

  sorted
end

def create_counting_array(array)
  counting_array = Array.new(array.max + 1, 0)
  array.each { |item| counting_array[item] += 1 }

  (1..(counting_array.length - 1)).each do |i|
    counting_array[i] += counting_array[i - 1]
  end

  counting_array
end

# puts counting_sort([6, 3, 1, 7, 2, 4, 8, 1, 2, 4]).to_s
# puts counting_sort([1, 4, 1, 2, 7, 5, 2, 0]).to_s
