def Safer_picture_downloading (input_dir , output_dir)

	Dir.chdir output_dir
	# First we find all of the pictures to be moved.
	pic_names = Dir["#{input_dir}/**/*.{jpg,jpeg}"]
	if pic_names == []
		puts "There is no pictures in this directory"
		exit
	end
	puts 'What would you like to call this batch?'
	batch_name = gets.chomp
	puts
	print "Downloading #{pic_names.length} files: "
	# This will be our counter. We'll start at 1 today,
	# though normally I like to count from 0.
	pic_number = 1
	pic_names.each do |name|

		print '.' # This is our "progress bar".
		new_name = if pic_number < 10
			"#{batch_name}0#{pic_number}.jpg"
		else
			"#{batch_name}#{pic_number}.jpg"
		end
		
		if File.exist?(new_name) == true
			pic_number = pic_number + 1
		else

			File.rename name, new_name
			pic_number = pic_number + 1
		end
	end
puts # This is so we aren't on progress bar line.
puts 'Done, cutie!'
end


Safer_picture_downloading "C:/rofl", "C:/Roflnum" 