# Pangram checking

def missing_characters(string)
  string.downcase!
  alph_array = Array.new(26, false)

  string.each_byte do |char|
    alph_array[char - 'a'.ord] = true if char != ' '.ord
  end

  alph_array.all?(true)
end

# Test cases

# puts missing_characters('The quick brown fox jumps over the lazy dog') # true
# puts missing_characters('The quick brown fox jumps over the dog') # false
