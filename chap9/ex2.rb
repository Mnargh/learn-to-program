#!/usr/local/rvm/rubies/ruby-2.3.4/bin/ruby

#roman numerals

puts "Please enter an integer"
my_int = gets.chomp.to_i

m_count = 0
d_count = 0
c_count = 0
l_count = 0
x_count = 0
v_count = 0
i_count = 0

while my_int >= 1000
	my_int -= 1000
	m_count += 1
end

while my_int >= 500
	my_int -= 500
	d_count += 1
end

while my_int >= 100
	my_int -= 100
	c_count += 1
end

while my_int >= 50
	my_int -= 50
	l_count += 1
end

while my_int >= 10
	my_int -= 10
	x_count += 1
end

while my_int >= 5
	my_int -= 5
	v_count += 1
end

while my_int >= 1
	my_int -= 1
	i_count += 1
end

puts "M"*m_count + "D"*d_count + "C"*c_count + "L"*l_count + "X"*x_count + "V"*v_count + "I"*i_count