class orange_tree
	def initialize
		@orange_count = 0
		@age = 0
		@height = 0
	end
	def height
		return (@height.to_s + " feet")
	end

	def count_the_oranges
		return (@orange_count.to_s + " oranges")
		

	def one_year_passes
		if @age >= 9
			return "Your tree is dead"
			@orange_count = 0
			@height = 0
			
		@age = @age + 1
		@height = @height + 5
		if @age > 5
			@orange_count = @orange_count + 5
		else
			@orange_count = @orange_count + 2
		end
	end

	def pick_an_orange
		if @orange_count > 0
			@orange_count - 1
			return "That orange was delicious!"
		else
			return "There are not more oranges to pick!"
		end
	end
end

tree = orange_tree.new
puts tree.one_year_passes
puts tree.height
puts tree.count_the_oranges
puts tree.age
