#!/usr/local/rvm/rubies/ruby-2.3.4/bin/ruby

#word sorting

puts "Please enter some words, one word per line"
#initialise the variable word
word = "word"

words = []

while word != ""
	word = gets.chomp
	words = words.push word
end
puts "Your words sorted: "
puts words.sort
