def invalid_roman num
	counter = 0
	index = 0
	while index != (num.length-1)

		if num[index] == num[index + 1]
			counter = counter + 1
			if counter == 3
				puts "Not a roman"
				exit
			end
		else
			counter = 0
		end
		if num[index + 1] == "M"
			if num[index] == "M" or num[index] == "D"
			else 
				puts "not roman MMMM"
				exit
			end
		end
		if num[index + 1] == "D"
			if num[index] == "M" or num[index] == "D"  or num[index] == "C"
			else 
				puts "not roman"
				exit
			end
		end
		if num[index + 1] == "C"
			if num[index] == "M" or num[index] == "D"  or num[index] == "C" or num[index] == "L"
			else 
				puts "not roman"
				exit
			end
		end
		if num[index + 1] == "L"
			if num[index] == "M" or num[index] == "D"  or num[index] == "C" or num[index] == "L" or num[index] == "X"
			else 
				puts "not roman"
				exit
			end
		end
		if num[index + 1] == "X"
			if num[index] == "M" or num[index] == "D"  or num[index] == "C" or num[index] == "L" or num[index] == "X" or num[index] == "I"  
			else 
				puts "not roman"
				exit
			end
		end
		if num[index + 1] == "I"
			if num[index] == "M" or num[index] == "D"  or num[index] == "C" or num[index] == "L" or num[index] == "X" or num[index] == "I"  
			else 
				puts "not roman"
				exit
			end
		end
		
		index = index + 1
	end
	puts "Is a valid roman numeral!"
end

invalid_roman "DMMM"
invalid_roman "MMXXII"