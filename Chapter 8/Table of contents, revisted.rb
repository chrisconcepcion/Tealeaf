line_width = 60
puts ("Table of Contents".center(line_width))
puts ""
puts ""
counter = 0
chapter = 1
content = ["Getting Started", 1 , "Numbers", 9, "Letters", 13] 
while (content.length) > counter
	puts ("Chapter " + (chapter).to_s + ": " + content[counter]).ljust(line_width/2) + ("page "+ (content[counter +1]).to_s).rjust(line_width/2)
	counter  = counter.to_i + 2
	chapter = chapter + 1
end