def merge_sort(array)
  return array if array.length <= 1

  middle = (array.length / 2).floor
  left_array = merge_sort(array[0...middle])
  right_array = merge_sort(array[middle...array.length])
  merge(left_array, right_array)
end

def merge(array1, array2)
  sorted = []
  until array1.empty? || array2.empty?
    if array1.first <= array2.first
      sorted << array1.shift
    else
      sorted << array2.shift
    end
  end
  sorted.concat(array1).concat(array2)
end

# Test cases

# puts merge_sort([64, 34, 25, 12, 22, 11, 90]).to_s
# puts merge_sort([90, 10, 36, 82, 67, 14, 5, 16, 39, 15]).to_s
