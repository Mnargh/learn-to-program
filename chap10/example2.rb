#!/usr/local/rvm/rubies/ruby-2.3.4/bin/ruby

def factorial num
    if num < 0
        return "You can't take the factorial of a negative number"
    end
    
    if num <= 1
        1
    else
        num * factorial(num-1)
    end
    
end

puts factorial 5
puts factorial 10