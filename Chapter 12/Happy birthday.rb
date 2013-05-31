def happy_birthday
	puts "What year were you born?"
	year = gets.chomp
	puts "What month were you born?"
	month = gets.chomp
	puts "What day were you born"
	day = gets.chomp

	years_old = (Time.new) - (Time.gm(year, month, day))
	puts (Integer(years_old/(60*60*24*365)).to_s + " SPANKS! for you!")
end


happy_birthday