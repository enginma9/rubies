def bubble_sort(bubbles = Array.new(1,0))
    ( bubbles.length - 1 ).downto(0) do |passthroughs|
        #p passthroughs
        
        ( 0 ).upto( passthroughs - 1 ) do |x|
            #p x
            #p "Is array[" + x.to_s + "]:" + bubbles[ x ].to_s + " greater than array[" + (x + 1).to_s + "]:" + bubbles[ x + 1 ].to_s + "?"
            #p (bubbles[ x ] > bubbles[ x + 1 ])
            if (bubbles[ x ] > bubbles[ x + 1 ])
                holder = bubbles[x]
                bubbles[x] = bubbles[x+1]
                bubbles[x+1] = holder
                #swap'em
            end
            #p bubbles
        end
    end
    #return sorted_array
    bubbles
end

#specifically instructed not to use .sort
#check 0&1 1&2 2&3 3&4
#passthrough (array_length-1) times
#each time, you need to check 1 less element
#1st pass results in the last element being known correct

bubble_sort([4,3,78,2,0,2])
#=> [0,2,2,3,4,78]
p bubble_sort
#need to be able to handle blank array values