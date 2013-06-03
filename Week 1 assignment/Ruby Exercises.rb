# Ruby Exercises
# 1
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
a.each do |i|
	puts i
end

# 2 and 3
puts
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
b=[]
a.each do |i|
	if i > 5
		puts i
		if i.odd?
			b.push(i)
		end
	end
end
puts
puts b

# 4
puts 
b.push(11)
b.unshift(0)
puts b

#5
puts
b.delete_at(0)
b.push(3)
puts b

#6
c = [1,1,1]
c.uniq!
puts
puts c

#7
puts
puts "Arrays are orded, hashes are not. Hashes hold keys that point to a value, arrays only hold values in an order without keys but with an index."

#8
d = {a: 1, b: 2, c: 3, d: 4}
e = {:s => 3, :t => 2, :u => 3, :v => 4}
puts 
puts d
puts
puts e

#9
h = {a:1, b:2, c:3, d:4}
puts


#10 
h[:e] = 5

#13
h.delete_if do |key, value|
	value < 3.5
end
puts h

#14
j = [1,2,3]
j.push(h)
h[:j] = j
puts j
puts h
puts "yes, proved above!"