def calculate_age(birth_date, current_date)
  birth_day, birth_month, birth_year = birth_date.split('/').map(&:to_i)
  current_day, current_month, current_year = current_date.split('/').map(&:to_i)
  days_in_months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

  if birth_day > current_day
    current_month -= 1
    current_day += days_in_months[birth_month - 1]
  end

  if birth_month > current_month
    current_year -= 1
    current_month += 12
  end

  {
    years: current_year - birth_year,
    months: current_month - birth_month,
    days: current_day - birth_day
  }
end

# Test cases

# puts calculate_age('07/09/1996', '07/12/2017') # Output: Years: 21  Months: 3  Days: 0
# puts calculate_age('16/12/2009', '07/12/2017') # Output: Years: 7  Months: 11  Days: 22
