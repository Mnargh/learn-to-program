#!/usr/local/rvm/rubies/ruby-2.3.4/bin/ruby

#grandfather clock

def clock(&chime)
    hour = Time.now.hour
        if hour%12 == 0
            puts "Ding Dong"
        else (hour%12).times do
            chime.call
        end
    end
end

clock do
    puts "DONG!"
end