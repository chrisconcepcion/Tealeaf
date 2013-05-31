def birthday_helper
	puts "Whose birth day would you like to know?"
	person = gets.chomp


	Dir.chdir "C:/Users/Christopher/Desktop/Hacker School/Prework/Chapter 12"
	birth = File.read "birth.txt"
	birth_array = []
	birth = birth.each_line do |line|
		birth_array.push(line)
	end
	counter = 0
	index = 0
	birth_hash = {}
	while counter != birth_array.length
		
		index = 0
		while index != birth_array[counter].length

			if birth_array[counter][index] == ","
				
				birth_hash[birth_array[counter][0..(index-1)]] = (birth_array[counter][index..((birth_array[counter].length)-2)])
				break
			
			end

			index = index + 1	  
		end
		counter = counter + 1
	end
	puts birth_hash[person]
	
end

birthday_helper
