def rotate( code, shift ) #after bringing value of A or a to 0, add the shift value, get modulus 26, then recombine
    ( code + shift ) % 26
end

def caesar_cypher( string, shift )
    result_string = ""
    #65.chr A.ord
    #iterate over all characters in the string and get char_code, 
    #find whether in range for being a letter, and whether upcase/downcase, 65(A)-90(Z) 97(a)-122(z)
    
    string.each_char do |char| 
        code = char.ord
        #p code
        if code.between?( 65, 90 )
            #puts "UPCASE"
            code = rotate( code - 65, shift) + 65
        elsif code.between?( 97, 122 )
            #puts "downcase"
            code = rotate( code - 97, shift) + 97
        else
            #puts "nope"
        end
        result_string += code.chr
    end
    return result_string
end