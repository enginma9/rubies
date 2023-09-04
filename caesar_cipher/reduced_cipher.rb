def caesar_cypher( string, shift )
    result_string = ""
    string.each_char do |char| 
        code = char.ord # A.ord / 65.chr
        if code.between?( 65, 90 )
            code = 65 + ((code - 65 + shift) % 26) # remove 65 char to get 0-26, add the shift, get remainder of dividing by 26, add 65 back to get correct code
        elsif code.between?( 97, 122 )
            code = 97 + ((code - 97 + shift) % 26)
        end
        result_string += code.chr # accumulate all the converted characters back to string
    end
    return result_string
end