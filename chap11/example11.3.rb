#!/usr/local/rvm/rubies/ruby-2.3.4/bin/ruby

#filename doesn't have to end with .txt
#but since it is valid text, why not?

filename = "ListerQuote.txt"
text_string = "I promise that I absolutely swear that " + 
                "I will never mention that gazpacho soup again"
                
File.open filename, "w" do |f|
    f.write text_string
end

read_string = File.read filename

puts (read_string == test_string)