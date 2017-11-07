#!/usr/local/rvm/rubies/ruby-2.3.4/bin/ruby

#birthday helper
#copied a lot from answer online, need to ask about this
def birthday
	birthday_array = []
	birth_dates = {}

	f = File.open("Birthdays.txt")
	f.each_line do |line|
	  birthday_array << line.split(", \t").map(&:strip)
	end
	f.close

	names = birthday_array.collect(&:first)
	dates = birthday_array.collect(&:last)

	(1..names.length - 1).each { |index| birth_dates[names[index]] = dates[index]}

	puts "Who's birthday do you need?"
	name = gets.chomp

	birthday = birth_dates[name][0..5]
	cur_year = Time.now.year
	birth_year = birth_dates[name][-4..-1].to_i
	age = cur_year - birth_year
	
	puts "#{name}'s next birthday is on #{birthday} and they will be #{age} years old."

end

birthday()