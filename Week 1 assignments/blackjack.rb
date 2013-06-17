class Blackjack
	def initialize
		@ace_blow_player = 0
		@ace_blow_dealer = 0
		@player_hand = []
		@dealer_hand = []
		@player_points = 0
		@dealer_points = 0
		@new_deck = create_deck
		say "What is your name?"
		@player = gets.chomp
		say @player + ", let's start!"
		@player_hand.push(@new_deck.pop)
		@player_hand.push(@new_deck.pop)
		say @player + " received " + @player_hand.to_s
		@dealer_hand.push(@new_deck.pop)
		@dealer_hand.push(@new_deck.pop)
		say "dealer received " + @dealer_hand.to_s
		value @player_hand
		value @dealer_hand
		game
	end


def say message
	puts "=> #{message}"
end



def shuffle array
	shuffled_array = []
	while array.length != 0
		random = rand(array.length)
		shuffled_array.push(array[random])
		array.delete_at(random)
	end
return shuffled_array
end


def card_value cards
	card_values = {:"Ace o"=> 11, :"2 of "=> 2, :"3 of "=> 3, :"4 of "=> 4, :"5 of "=> 5, :"6 of "=> 6, :"7 of "=> 7,:"8 of "=>8, :"9 of "=> 9, :"10 of"=> 10,:"Jack "=>10, :"Queen"=> 10, :"King " => 10}
	counter = 0
	total_value = 0
	while counter != cards.length
		total_value = total_value + card_values[:"#{cards[counter][0..4]}"]
		counter = counter + 1
	end
	return total_value
end



def create_deck
	no_suite_deck = ["Ace", 2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King"]
	suites = ["Diamonds", "Clubs", "Hearts", "Spades"]
	full_deck = []
	counter = 0
	index = 0
	while counter != suites.length
		index = 0

		while index != no_suite_deck.length
			full_deck.push((no_suite_deck[index].to_s) +" of " + (suites[counter].to_s))
			index = index + 1
		end
		counter = counter + 1
	end
	
	full_deck = shuffle full_deck
	full_deck = shuffle full_deck
	full_deck = shuffle full_deck
	full_deck = shuffle full_deck
	full_deck = shuffle full_deck
	full_deck = shuffle full_deck
	return full_deck
end				

	
	def stand_end
		while @dealer_points < 17
			draw @dealer_hand
		end
		if @dealer_points > @player_points
			say "Dealer wins!, "+  @player +" loses!"
			exit
		else 
			say @player +" wins !" + ", Dealer loses!"
			exit
		end
	end

	



	def draw user
		user.push(@new_deck.pop)
		if user == @player_hand
			say @player + " has received a new card. Your new hand is:"
			say @player_hand.to_s
		else
			say "Dealer has received a new card. Their new hand is:"
			say @dealer_hand.to_s
		end
		value user
		
		if user == @player_hand
			win_lose @player_points
		else
			win_lose @dealer_points
		end
	end

	def value user
		if user == @player_hand
			@player_points = (card_value user).to_i + (@ace_blow_player)*(-10)
			say (@player.to_s + " total points: " + (@player_points).to_s)
		else
			@dealer_points = (card_value user).to_i + (@ace_blow_dealer)*(-10)
			say ("Dealer" + " total points: " + (@dealer_points).to_s)

		end
	end
		def win_lose user
			if user == 21
				if user == @player_points
					say @player +" wins !" + ", Dealer loses!"
					exit
				else
					say "Dealer wins!, "+  @player +" loses!"
					exit
				end
			elsif user > 21
				counter = 0
				if user == @player_points
					while counter < @player_hand.length
							if (@player_hand[counter][0..4]).to_s == "Ace o"
						
								@ace_blow_player = @ace_blow_player + 1
								
								say @player_points.to_s + " what is lost?"
							end
							counter = counter + 1
					
					end
				else
					while counter < @dealer_hand.length
						if user == @dealer_points
							if (@dealer_hand[counter][0..4]).to_s == "Ace o"
						
								@ace_blow_dealer = @ace_blow_dealer + 1
								value @dealer_hand

								
							end
							counter = counter + 1
						end
					end
				end
			end

				
				if user > 21
				
					if user == @player_points
						say "Dealer wins!, "+  @player +" loses!"
						exit
					else 
						say @player +" wins !" + ", Dealer loses!"
						exit
					end
				else
					say "Ace = 1"
					say user
				end
			
		end

	def game
		puts
		puts
		say "What would you like to do?"
		say "Stand or hit?"
		puts
		while true
		say "Choose 1) Hit 2) Stand"
			request = gets.chomp
			if request == "1"
				draw @player_hand
		
			elsif request == "2"
				stand_end
			else
				say "Enter either 1 or 2...."
		
			end

		end
	end

end

rofl = Blackjack.new


