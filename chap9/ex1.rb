#!/usr/local/rvm/rubies/ruby-2.3.4/bin/ruby

#ask method

def ask question
    while true
        puts question
        reply = gets.chomp.downcase
        
        if (reply == "yes" or reply == "no")
            if reply == "Yes"
                return true
            else
                return false
            end
        else
            puts "Please answer 'yes' or 'no'."
        end
    end
end

puts "hello, and thank you for.."
puts
ask "do you like eating tacos?"
        
        