def bubble_sort(array)
  last = array.length - 1

  loop do
    i = 0
    step = 0

    while i < last
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        step += 1
      end
      i += 1
    end

    last -= 1

    return array if step.zero?
  end

  array
end

# Test cases

# puts bubble_sort([64, 34, 25, 12, 22, 11, 90]).to_s
# puts bubble_sort([90, 10, 36, 82, 67, 14, 5, 16, 39, 15]).to_s
