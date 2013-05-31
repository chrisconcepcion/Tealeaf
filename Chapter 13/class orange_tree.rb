class Orange_Tree
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
	end

	def age
		return @age.to_s + " years old"
	end
		

	def one_year_passes
		if @age >= 9
			return "Your tree is dead"
			@orange_count = 0
			@height = 0
		end
			
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
			@orange_count = @orange_count - 1
			return ("That orange was delicious!" + " There are " +count_the_oranges.to_s + " left")
		else
			return "There are not more oranges to pick!"
		end
	end
end

tree = Orange_Tree.new
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
puts tree.height
puts tree.count_the_oranges
puts tree.age
puts tree.pick_an_orange
tree.one_year_passes
tree.one_year_passes
puts tree.one_year_passes