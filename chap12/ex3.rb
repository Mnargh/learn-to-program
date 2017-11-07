#!/usr/local/rvm/rubies/ruby-2.3.4/bin/ruby

def rom_num(num)
    
    #set out values of each letter
    
numerals = {
            "i" => 1,
            "v" => 5,
            "x" => 10,
            "l" => 50,
            "c" => 100,
            "m" => 1000}

#running total as we work backwards through the roman numeral
total = 0

#which character we are adding to the total
char_pos = num.length - 1


    while char_pos >= 0
    
        current = num[char_pos].downcase
        
        if char_pos == 0
            total += numerals[current]
            break
        end
        
        
        total += numerals[current]
        
        #is preceding character smaller than the current one? 
        #yes - need to subtract from total
        prec_char = num[char_pos - 1].downcase
        
        if numerals[prec_char] < numerals[current]
            total -= numerals[prec_char]
            
            #need to move an extra position forward to skip the preceding character
            char_pos -= 1
        end
        
        char_pos -= 1
    end
    return total
end

puts rom_num("MCCIV")        