#!/usr/local/rvm/rubies/ruby-2.3.4/bin/ruby

require 'yaml'

test_array = ["Give quiche a chance",
                "Mutants out!",
                "Chameleonic life forms, no thanks!"]
                
test_string = test_array.to_yaml
#kind of like to_s and it is a string
#but it is a YAML description of "test_array"

filename = "RimmerTShirts.txt"

File.open filename, "W" do |f|
    f.write test_string
end

read_string = File.read filename

read_array = YAML::load read_string

puts(read_string == test_string)
puts(read_array == test_array)

