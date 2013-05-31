def log block_description, &block
		puts 'Beginning "' +"#{block_description}" + '"...'
		returned = block.call
		puts '"'+"#{block_description}" +'"...finished. '+ "Returned: " + returned.to_s
end

log "league phrase" do 
	log "some little block" do
		5
	end
	log 'yet another block' do
		"I like Chinese food!"
	end
	1 == 2
end

