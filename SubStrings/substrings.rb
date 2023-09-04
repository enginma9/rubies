def substrings(main_string, substring_array)
    #bring all words to downcase, split on spaces, and remove punctuation
    main_string = main_string.downcase.gsub(/[^a-z0-9\s]/i, "")
    substring_listing_hash = Hash.new
    #for each word in substring_array, check whether the string is included in the word, and how many times
    substring_array.each do |word| 
        if main_string.include?(word)

            #scan gives array of words
            #count elements in array
            substring_listing_hash[word] = main_string.scan(word).count 
        end
    end
    
    p substring_listing_hash
end

# Examples from https://www.theodinproject.com/lessons/ruby-sub-strings
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)
# expected result => { "below" => 1, "low" => 1 }

substrings("Howdy partner, sit down! How's it going?", dictionary)
# expected result  => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }