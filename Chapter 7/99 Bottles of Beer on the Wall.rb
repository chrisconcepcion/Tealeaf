
num_of_bottles = 99
while num_of_bottles > 0
	puts (num_of_bottles.to_s + " bottles of beer on the wall, " + num_of_bottles.to_s + " bottles of beer.")
	puts ("Take one down and pass it around, "+ num_of_bottles.to_s + " bottles of beer on the wall.")
	num_of_bottles = num_of_bottles -1
end
