#!/usr/local/rvm/rubies/ruby-2.3.4/bin/ruby



puts "What year were you born in?"
year = gets.chomp.to_i

puts "Which month were you born in? Please enter the figure"
month = gets.chomp.to_i

puts "What day of the month were you born on?"
day = gets.chomp.to_i

birthdate = Time.local(year, month, day)
time = Time.now

if (time.month - birthdate.month) < 0
    age = (time.year - birthdate.year - 1)
elsif (time.month - birthdate.month == 0) and (time.day - birthdate.day < 0)
    age = (time.year - birthdate.year - 1)
else 
    age = time.year - birthdate.year 
end

puts "You are #{age} years old"
age.times(puts "Spank")


