# Brute force O(n^2) solution, can be optimized further
def stock_picker(stock_prices)
	min_day = 0
	max_day = 0
	max_profit = 0

	if stock_prices.length < 2
		return "Invalid prices input"
	end

	for i in 0..stock_prices.length-2
		j = i + 1
		for j in j..stock_prices.length-1
			profit = stock_prices[j] - stock_prices[i]

			if profit > max_profit
				min_day = i
				max_day = j
				max_profit = profit
			end
		end
	end

	if max_profit == 0
		return "Don't buy this stock!"
	end
	return [min_day, max_day]
end

prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
prices1 = []			# invalid prices array
prices2 = [5]			# invalid prices array
prices3 = [6, 9, 20, 1] # lowest price on last day
prices4 = [20, 19, 17, 15, 14, 10, 6, 4, 1]			# negative profit - sell price is always lower than day 0 price

p stock_picker(prices)
p stock_picker(prices1)
p stock_picker(prices2)
p stock_picker(prices3)
p stock_picker(prices4)
