def sum_minute(time, minutes)
  hh, mm = time.split(':').map(&:to_i)

  total_mm = hh * 60 + mm + minutes

  hours = (total_mm / 60) % 24
  mins = total_mm % 60

  format('%<hours>02d:%<mins>02d', hours: hours, mins: mins)
end

# Test cases

# puts sum_minute('12:43', 21) # 13:04
# puts sum_minute('20:39', 534) # 05:33
