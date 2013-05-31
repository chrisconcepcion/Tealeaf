text_to_granny = gets.chomp
puts "HUH?! SPEAK UP, SONNY!"
text_to_granny = gets.chomp
while text_to_granny != text_to_granny.upcase
	puts "HUH?! SPEAK UP, SONNY!"
	text_to_granny = gets.chomp
end
puts "NO, NOT SINCE " + (1930 + rand(21)).to_s + "!"
