def shuffle array
	shuffled_array = []
	while array.length != 0
		random = rand(array.length)
		shuffled_array.push(array[random])
		array.delete_at(random)
	end
return shuffled_array
end

ray = ["hey","Cool","BEANS","school","Vault"]
shuffle ray
