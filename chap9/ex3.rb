#!/usr/local/rvm/rubies/ruby-2.3.4/bin/ruby

#roman numerals
def roman num
	
	m_count = 0
	cm_count = 0
	d_count = 0
	c_count = 0
	xc_count = 0
	l_count = 0
	x_count = 0
	ix_count = 0
	v_count = 0
	iv_count = 0
	i_count = 0
	
	while num >= 1000
		num -= 1000
		m_count += 1
	end
	
	while num >= 900
		num -= 900
		cm_count += 1
	end
	
	while num >= 500
		num -= 500
		d_count += 1
	end
	
	while num >= 100
		num -= 100
		c_count += 1
	end
	
	while num >= 90
		num -= 90
		xc_count += 1
	end
	
	while num >= 50
		num -= 50
		l_count += 1
	end
	
	while num >= 10
		num -= 10
		x_count += 1
	end
	
	while num >= 9
		num -= 9
		ix_count += 1
	end
	
	while num >= 5
		num -= 5
		v_count += 1
	end
	
	while num >= 4
		num -= 4
		iv_count += 1
	end
	
	while num >= 1
		num -= 1
		i_count += 1
	end
	
	puts "M"*m_count + "CM"*cm_count + "D"*d_count + "C"*c_count + "XC"*xc_count + "L"*l_count + "X"*x_count + "IX"*ix_count + "V"*v_count + "IV"* iv_count + "I"*i_count
	
end

roman 1000
roman 999
roman 900
roman 890
roman 90
roman 49
roman 4