#!/usr/local/rvm/rubies/ruby-2.3.4/bin/ruby

#deaf grandma

puts "What do you say to grandma?"

bye = 0
while bye < 3
	print "Say: "
	response = gets.chomp
		if response == "BYE"
			bye += 1

		elsif response != "BYE"
			bye = 0

			if response != response.upcase
			puts "HUH?! SPEAK UP, SONNY!"

			elsif response == response.upcase
			puts "NO! NOT SINCE " + (1920+rand(20)).to_s + "!"	
			end	
		end
end