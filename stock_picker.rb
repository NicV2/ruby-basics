def stock_picker(stock_values)
lowest_value = stock_values.min
buy_day = stock_values.index(lowest_value)

highest_value = stock_values.max
sell_day = stock_values.index(highest_value)

#Find second highest stock value, if highest day is Day 0.
if stock_values.index(highest_value) == 0
	
	highest_value = stock_values[1]
	y = 2
	while y < stock_values.length
		if highest_value < stock_values[y]
			highest_value = stock_values[y]
		end
			y = y + 1
	end

	sell_day = stock_values.index(highest_value)

=begin
If not preserving the array, can delete highest value, adjust days by 1
	stock_values.delete(highest_value)
	highest_value = stock_values.max 
	sell_day = stock_values.index(highest_value).to_i + 1
	buy_day = stock_values.index(lowest_value).to_i + 1
=end
end

#Find second lowest value if lowest value is last day
if stock_values.index(lowest_value) == (stock_values.length - 1)
	x = 0
	lowest_value = stock_values[0]
	while x < stock_values.length-1
		if lowest_value > stock_values[x]
			lowest_value = stock_values[x]
		end
		x = x + 1
	end
	buy_day = stock_values.index(lowest_value)
=begin 
If not preserving the array, can delete lowest value and use .min 
to find second lowest value
	stock_values.delete(lowest_value)
	lowest_value = stock_values.min
	buy_day = stock_values.index(lowest_value)
	puts "hello"
=end	
end

#Find lowest value if buy day is after sell day
if buy_day > sell_day
	x = 0
	lowest_value = stock_values[0]
	while x < sell_day
		if lowest_value > stock_values[x]
			lowest_value = stock_values[x]
		end
		x = x + 1
	end
	buy_day = stock_values.index(lowest_value)
end

puts "The best day to buy is day #{buy_day}."
puts "The best day to sell is day #{sell_day}."

end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])