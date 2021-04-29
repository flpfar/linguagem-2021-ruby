def common_characters(*strings)
  prim = Array.new(26, true)
  result = []

  strings.each do |string|
    sec = Array.new(26, false)

    string.each_char do |char| 
      sec[char_to_index(char)] = true if prim[char_to_index(char)]
    end

    prim.size.times { |index| prim[index] = sec[index] }
  end

  prim.size.times { |i| result << (i + 'a'.ord).chr if prim[i] }

  result
end

def char_to_index(char)
  char.ord - 'a'.ord
end

# Test cases

# puts common_characters('geeksforgeeks', 'gemkstones', 'acknowledges', 'aguelikes').to_s # Output: e g k s
# puts common_characters('apple', 'orange').to_s # Output: a e
