#!/usr/local/rvm/rubies/ruby-2.3.4/bin/ruby

#leap year

puts "What is your starting year?"
start = gets.chomp.to_i
puts "What is your end year?"
finish = gets.chomp.to_i

while start > finish
	puts "Your starting year is later than your finishing year, please try again"
	
	puts "What is your starting year?"
	start = gets.chomp.to_i
	puts "What is your end year?"
	finish = gets.chomp.to_i
	puts
end

while start%4 != 0
	start += 1
end


while start <= finish
	unless (start%100 == 0) && (start%400 != 0)
		puts "#{start}"	
	end
	start += 4
end