#!/usr/local/rvm/rubies/ruby-2.3.4/bin/ruby
$nest_level = -1
def log(description, &block)
    $nest_level += 1
    
   puts "\t"*$nest_level + "Started the #{description} block"
   return_value = block.call
   puts "finished the block. the block returned: #{return_value}"  
end

log("level1_block") do
    log("level2_block") do
        log("level3_block") do
            log("level4_block") do
                puts "Hello, this is level 4"
            end
        puts 42
        end
    puts "I love Indian food!"
    end
true
end