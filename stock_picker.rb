def stock_picker(arr)
  best_buy_date = 0
  best_sell_date = 0
  profit = 0
  
  #uncomment below to test out different arrays!
  #arr = Array.new(7) { rand(100)}
  #p arr

  arr[0..-2].each_with_index do |buy, i|
    arr[(i+1)..-1].each_with_index do |sell, j|
      if (sell - buy) > profit
        best_sell_date = j +(i + 1)
        best_buy_date = i
        profit = sell - buy
      end
    end
  end
  p [best_buy_date, best_sell_date]
  p "Profit of #{profit} galleons"
end

arr = [17,3,6,9,15,8,6,1,10]
stock_picker(arr)