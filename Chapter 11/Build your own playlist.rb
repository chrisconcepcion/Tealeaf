def shuffle array
	shuffled_array = []
	while array.length != 0
		random = rand(array.length)
		shuffled_array.push(array[random])
		array.delete_at(random)
	end
return shuffled_array
end



def build_your_own_playlist (input_dir , output_dir)

	Dir.chdir output_dir
	music_names = Dir["*.{mp3}"]
	music_shuffled = shuffle music_names
	puts "What would you like to name your playlist file?"
	playlist_file = gets.chomp + ".m3u"
	if music_shuffled == []
		puts "There is no music in this directory(s)"
		exit
	end
	File.new playlist_file,"w"

	File.open playlist_file, 'w' do |f|
		counter = 0
		while counter != music_shuffled.length
			f.write music_shuffled[counter]
			f.write "\n"
			counter = counter + 1
		end

	end
end


build_your_own_playlist "C:/Users/Christopher/Desktop/music nexus 4", "C:/Users/Christopher/Desktop/music nexus 4"

