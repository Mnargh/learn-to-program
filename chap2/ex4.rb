#!/usr/local/rvm/rubies/ruby-2.3.4/bin/ruby


#how old is 912 million seconds?

time = 912*10**6

year = 60*60*24*365
day = 60*60*24
hour = 60*60
min = 60

years = time/year
puts "#{years.round} years"
time = time%year

days = time/day
puts "#{days.round} days"
time = time%day

hours = time/hour
puts "#{hours.round} hours"
time = time%hour

mins = time/min
puts "#{mins.round} mins"
time = time%min

puts "#{time} seconds"






