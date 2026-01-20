prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stock_picker(prices)
  best_day = []
  max_profit = 0
  
  prices.each_with_index do |buy_price, buy_day|
    prices.each_with_index do |sell_price, sell_day|
      next if sell_day <= buy_day
      profit = sell_price - buy_price
      if profit >= max_profit
        max_profit = profit
        best_day = [buy_day, sell_day]
      end
    end
  end

  puts best_day
end

stock_picker(prices)
