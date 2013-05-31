puts "What is the starting year?"
start_year = gets.chomp
puts "What is the ending year?"
end_year = gets.chomp
while start_year.to_i < (end_year.to_i + 1)  
	if (start_year.to_i % 4) == 0 && (start_year.to_i % 100) != 0 
		puts start_year
		start_year = (start_year.to_i+1)
	
	else
		start_year = start_year.to_i + 1
	end
end


