# Given a string, write a program to count the occurrence of Lowercase characters, Uppercase characters, 
# Special characters, and Numeric values.

ASCII_RANGES = {
  upper: 65..90,
  lower: 97..122,
  number: 48..57
}.freeze

def count(string)
  result = {
    upper: 0,
    lower: 0,
    number: 0,
    special: 0
  }

  string.each_byte do |byte|
    case byte
    when ASCII_RANGES[:upper]
      result[:upper] += 1
    when ASCII_RANGES[:lower]
      result[:lower] += 1
    when ASCII_RANGES[:number]
      result[:number] += 1
    else
      result[:special] += 1
    end
  end

  puts "Upper case letters: #{result[:upper]}"
  puts "Lower case letters: #{result[:lower]}"
  puts "Numbers: #{result[:number]}"
  puts "Special characters: #{result[:special]}"
end

# Test cases

# puts count('#GeeKs01fOr@gEEks07') # upper: 5; lower: 8; numbers: 4; special: 2
# puts count('*GeEkS4GeEkS*') # upper: 6; lower: 4; numbers: 1; special: 2
