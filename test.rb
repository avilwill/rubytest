def find_day_of_year_by_number(number)
    current_day = Time.new(2021, 1, 1)
    one_day = 60 * 60 * 24
    until current_day.yday == number
            current_day += one_day
    end
    current_day
end

p find_day_of_year_by_number(150)
p find_day_of_year_by_number(246)
p find_day_of_year_by_number(330)
p find_day_of_year_by_number(26)