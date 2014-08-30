def stock_picker(pricetable)
	#best_buy = pricetable[0]
	#best_sell = pricetable[1]
	best_gain = 0
	best_gain_days = []

	pricetable.each do |buyprice|
		best_buy = buyprice
		pricetable.each do |sellprice|
			if pricetable.index(sellprice) <= pricetable.index(buyprice) then
				next
			else
				best_sell = sellprice 
				gain = best_sell - best_buy
				if gain > best_gain
					best_gain = gain
					best_gain_days = [pricetable.index(buyprice), pricetable.index(sellprice)]
				end
			end
		end
	end
	return best_gain_days
end

print stock_picker([17,3,6,9,15,8,6,1,10])