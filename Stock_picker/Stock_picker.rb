def Stock_picker(stck_price)
    profit=0
    buy_day=0
    sell_day=0

    stck_price.each do |price|
        curr_day=stck_price.index(price)
        #comp with current day price with fature price 
        fature_price =stck_price[curr_day+1..-1]
        fature_price.each do |fature_pr|
            poss_profit=fature_pr - price
            fature_days=fature_price.index(fature_pr)+1
            if poss_profit >profit
                profit=poss_profit
                buy_day=curr_day
                sell_day=buy_day+fature_days
            end
        end
       
    end
    print [buy_day,sell_day]
end
array=[17,3,6,9,15,8,6,1,10]
puts Stock_picker(array)