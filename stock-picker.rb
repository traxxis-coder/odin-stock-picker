def stock_picker(days)
  diff = 0
  result = []
  days.each_with_index do |day, index|
    (index + 1).upto(days.size - 1) do |num|
      if (days[num] - day) > diff
        diff = days[num] - day
        result = [index, num]
      end
    end
  end
  result == [] ? "No suitable day to buy stocks during this period." : "The best day to buy stock is day number #{result[0]} and the best day to sell it is day number #{result[1]}."
end

p stock_picker([17,3,6,9,15,8,6,1,10])
p stock_picker([5, 4, 3, 2, 1])