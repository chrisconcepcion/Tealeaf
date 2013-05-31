text_to_granny = gets.chomp
counter = 0


while counter < 3
	puts "HUH?! SPEAK UP, SONNY!"
	text_to_granny = gets.chomp
	if text_to_granny == "BYE"
		counter = counter + 1
			
	else
		counter = 0
	
end
end
puts "NO, NOT SINCE " + (1930 + rand(21)).to_s + "!"
