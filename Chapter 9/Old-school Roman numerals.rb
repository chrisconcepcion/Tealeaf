
def Old_School_Roman_Numerals num
	m = 0
	cm = 0
	d = 0
	cd = 0
	c = 0
	xc = 0
	l = 0
	xl = 0
	x = 0
	ix = 0
	v = 0
	iv = 0
	i = 0

	if num >= 1000
		m = num/1000
		num = num - (m*1000)
	else
	end

	if (num/100) == 9
		cm = 1
		num = num - 900
	
	else 
	end
	if num >= 500
		d = num/500
		num = num - (d*500)
	else
	end

	if (num/100) == 4
		cd = 1
		num = num -400


	else
	end
	if num >= 100
		c = num/100
		num = num - (c * 100)
	
	else
	end

	if (num/90) == 1
		xc = 1
		num = num - 90
	else
	end

	if num >= 50
		l = num/50
		num = num - (l * 50)
		
	else
	end

	if (num/10) == 4
		xl = 1
		num = num - 40
	else
	end

	if num >= 10
		x = num/10
		num = num - (x*10)
	else
	end
	if num == 9
		ix = 1
		num = num -9
	
	else
	end
	if num >= 5
		v = num/5
		num = num - (v*5)
	
	else
	end
	if num == 4
		iv = 1
		num = num -4
	else
	end
	if num >= 1
		i = num
	
	else
	end
	return ("M"*m + "CM"*cm + "D"*d + "CD"*cd + "C"*c + "XC"*xc + "L"*l + "XL"*xl + "X"*x + "IX"*ix + "V"*v + "IV"*iv + "I"*i)
end

Old_School_Roman_Numerals (1000)
Old_School_Roman_Numerals (999)
Old_School_Roman_Numerals (888)
Old_School_Roman_Numerals (777)
Old_School_Roman_Numerals (666)
Old_School_Roman_Numerals (555)
Old_School_Roman_Numerals (444)
Old_School_Roman_Numerals (333)
puts


Old_School_Roman_Numerals (100)
Old_School_Roman_Numerals (99)
Old_School_Roman_Numerals (88)
Old_School_Roman_Numerals (77)
Old_School_Roman_Numerals (66)
Old_School_Roman_Numerals (55)
Old_School_Roman_Numerals (44)
Old_School_Roman_Numerals (33)
puts
Old_School_Roman_Numerals (10)
Old_School_Roman_Numerals (9)
Old_School_Roman_Numerals (8)
Old_School_Roman_Numerals (7)
Old_School_Roman_Numerals (6)
Old_School_Roman_Numerals (5)
Old_School_Roman_Numerals (4)
Old_School_Roman_Numerals (3)
