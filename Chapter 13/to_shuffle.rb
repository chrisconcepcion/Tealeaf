class Array
	def to_shuffle
		shuffled_array = []
		while self.length != 0
			random = rand(self.length)
			shuffled_array.push(self[random])
			self.delete_at(random)
		end
	return shuffled_array
	end
end
ray = ["hey","Cool","BEANS","school","Vault"]
puts ray.to_shuffle
