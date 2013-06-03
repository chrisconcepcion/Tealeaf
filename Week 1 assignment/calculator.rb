def say message
	puts "=> #{message}"
end

def check_if_num num
	if num.to_f == 0
		if num.to_s == "0"
			return true
		else 
			return false
		end
	else
		return true
	end
end

def operation_to_text op
	case op
	when "1"
  		"add"
	when "2"
  		"subtract"
	when "3"
  		"multiply"
	when "4"
  		"divide"
	end
end



def calculator
	say "This is a simple calculator application that takes two numbers."
	say "Enter numbers 1-4 to choose an action:"
	say "1) Add, 2) Subtract, 3)Multiple, 4)Divide?"
	while 1 != 2
		operation = gets.chomp
		if operation == "1" or operation == "2" or operation == "3" or operation == "4"
			break
		else
			say "You have enter an invalid choice, please try again."
		end
	end

	while 1 != 2
		say "Enter the first number"
		first_num = gets.chomp
		if check_if_num(first_num) == true
			break
		else
			say "You must enter a number as the first number, please try again."
		end
	end

	while 1 != 2
		say "Enter the second number:"
		second_num = gets.chomp
		if check_if_num(second_num) == true
			break
		else 
			say "You must enter a number as a second number, please try again."
		end
	end

	# I chose to_f instead of i because (2.2).to_i + 2 = 4 which isn't correct


	if operation == "1"
  		result = first_num.to_f + second_num.to_f
  		
	elsif operation == "2"
  		result = first_num.to_f - second_num.to_f
	
	elsif operation == "3"
  		result = first_num.to_f * second_num.to_f
  
	elsif operation == "4"
  		result = first_num.to_f / second_num.to_f
 


	end

	say "You chose to #{operation_to_text(operation)} #{first_num} and #{second_num}. Result: #{result}"
end


calculator