def sort some_array # This "wraps" recursive_sort.
recursive_sort some_array, []
end
def recursive_sort unsorted_array, sorted_array
	finished_sorted_counter = unsorted_array.length
	counter = 0

	while counter != finished_sorted_counter 
		if (unsorted_array.length) == 0
			
			unsorted_array = sorted_array
			sorted_array=[]
			counter = 0
		else
		end

		if (unsorted_array.length) == 1
			sorted_array.push(unsorted_array[0])
			unsorted_array.delete_at(0)
			counter = counter + 1
		elsif (unsorted_array[0].capitalize) < (unsorted_array[1].capitalize)
			sorted_array.push(unsorted_array[0])
			unsorted_array.delete_at(0)
			counter = counter + 1

			
		else

			sorted_array.push(unsorted_array[1])
			unsorted_array.delete_at(1)
			counter = 0
		end
	end
	puts "it has been sorted!"
	puts ("Here's your new array " + (sorted_array).to_s)
end

ray = ["hey","Cool","BEANS","school","Vault"]
puts (sort(ray))