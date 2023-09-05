def stock_picker(stock_array)   # find the biggest difference between two numbers, where the first is the smaller
    # create hash with values for best start, best end, and profit, and add to best profit array
    best_day = { :buy => 0, :sell => 0, :profit => 0 }
    stock_array.each_with_index do |first, index|  # if not at last element, start at this point on the index and move forward
        # p " buy time:" + first.to_s
        # p " index:" + index.to_s
        # p " best_day" + best_day.to_s
        # p "Index:" + (index + 1).to_s + " Length:" + (stock_array.length-1).to_s
        x=0
        ( index + 1 ).upto(stock_array.length-1) do |sell_point|
            # p "Is it better than " + best_day[:profit].to_s + "?"
            possible_profit = stock_array[sell_point] - stock_array[index]
            if ( stock_array.length > sell_point && possible_profit > best_day[:profit] )
                # puts "true"
                best_day = { :buy => index, :sell => sell_point, :profit => possible_profit }
            end
            # p "  sell_point:" + sell_point.to_s + " Profit:" + possible_profit.to_s
            x+=1
        end
        # p "checked " + x.to_s + " times"
    # p "each_with_index end========="
    end
    # p "stock_picker end"
    puts best_day
    return [best_day[:buy],best_day[:sell]]
end

# example from https://www.theodinproject.com/lessons/ruby-stock-picker
# p stock_picker([17,3,6,9,15,8,6,1,10])  # expects [1,4]  # for a profit of $12



