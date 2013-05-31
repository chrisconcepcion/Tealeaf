array_of_words = []
while array_of_words.last != ""
	array_of_words.push gets.chomp
end
puts array_of_words.sort