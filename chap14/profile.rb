#!/usr/local/rvm/rubies/ruby-2.3.4/bin/ruby


def profile block_description, boolean, &block
    
    profile = boolean
        if profile
            start_time = Time.now
            block.call
            duration = Time.now - start_time
            puts block_description+': '+duration.to_s+' seconds'
        else 
            block.call
        end
end

profile '25000 doublings' do
    number = 1
    
    25000.times do
        number = number+number
    end
    
    puts number.to_s.length.to_s+' digits'
    #the number of digits in this huge number
end

profile 'count to a million' do
    number = 0
    1000000.times do
        number = number + 1
    end
end
