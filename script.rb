days = [17,3,6,9,15,8,6,1,10]

def stock_picker(days)
  possible_sells = []

  days.each do |buy|
    days.each do |sell|
      if days.index(buy) < days.index(sell)
        possible_sells << {bought: days.index(buy), sold: days.index(sell), profit: sell - buy} # get each possible buy and sell
      end
    end
  end
  possible_sells.sort_by! { |sell| sell[:profit]} # sort by profit

  p possible_sells # test

  puts "Best day to buy: #{possible_sells.last[:bought]}"
  puts "Best day to sell: #{possible_sells.last[:sold]}"
  puts "Profit: #{possible_sells.last[:profit]}$"
end

stock_picker(days)