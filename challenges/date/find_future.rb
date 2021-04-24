def find_future(dates, queries)
  sorted_dates = dates.sort { |a, b| compare_dates(a, b) }
  result = []

  queries.each do |query|
    i = 0
    i += 1 while i < dates.size && compare_dates(query, sorted_dates[i]) == 1

    result << (i < dates.size ? sorted_dates[i] : -1)
  end

  result
end

def compare_dates(date1, date2)
  day1, month1, year1 = date1.split('/').map(&:to_i)
  day2, month2, year2 = date2.split('/').map(&:to_i)

  return year1 <=> year2 if (year1 <=> year2) != 0

  return month1 <=> month2 if (month1 <=> month2) != 0

  day1 <=> day2
end

# Test cases

# dates = ['22/4/1233', '1/3/633', '23/5/56645', '4/12/233']
# queries = ['23/3/4345', '12/3/2']

# dates = ['22/4/1233', '4/12/233', '1/3/633', '23/5/56645']
# queries = ['4/4/34234234']

# puts find_future(dates, queries).to_s
