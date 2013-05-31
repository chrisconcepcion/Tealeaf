def Grandfather_clock &block
	times_to_run = ((Time.new.hour) +1)
	counter = 0
	while counter != times_to_run
		block.call
		counter = counter + 1			
	end
end
Grandfather_clock do 
	puts "boobaman"
	end

