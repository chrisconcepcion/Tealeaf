class Deck
	attr_accessor :new_deck
	
	def initialize
		@new_deck = create_deck
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




	def shuffle array
		shuffled_array = []
		while array.length != 0
			random = rand(array.length)
			shuffled_array.push(array[random])
			array.delete_at(random)
		end
		return shuffled_array
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
end	





module Hand

	def card_value
		cards = self.cards
		card_values = {:"- Ace"=> 1, :"Ace o"=> 11, :"2 of "=> 2, :"3 of "=> 3, :"4 of "=> 4, :"5 of "=> 5, :"6 of "=> 6, :"7 of "=> 7,:"8 of "=>8, :"9 of "=> 9, :"10 of"=> 10,:"Jack "=>10, :"Queen"=> 10, :"King " => 10}
		counter = 0
		total_value = 0
		while counter != cards.length
			total_value = total_value + card_values[:"#{cards[counter][0..4]}"]
			counter = counter + 1
		end
		return total_value
	end
end

class Player
	include Hand
	attr_accessor :name, :cards
	def initialize (name)
		@name = name
		@cards = []
	end
end

class Dealer
	include Hand
	attr_accessor :name, :cards
	def initialize 
		@name = "Dealer"
		@cards = []

	end
end

class Blackjack

	attr_accessor :player1, :player2, :player3, :dealer, :deck, :players

	def initialize
		@player1 = Player.new("Player 1")
		@player2 = Player.new("Player 2")
		@player3 = Player.new("Player 3")
		@dealer = Dealer.new
		@deck = Deck.new
		@players = []
		self.player_names
	end

	def player_names
		while true
			puts "How many players would like to play? Only up to 3 players can play at one time!"
			player_num = gets.chomp.to_i
			if player_num < 1 || player_num > 3
				puts "You must enter a number between 1 and 3"
			else
				break
			end
		end
		counter = 1
		while counter != (player_num.to_i + 1)
			if counter == 1
				puts "What is player #{counter} name?"

				player1.name = gets.chomp
				puts "Nice to meet you #{player1.name}"
				counter += 1

			elsif counter == 2
				puts "What is player #{counter} name?"
				player2.name = gets.chomp
				puts "Nice to meet you #{player2.name}"
				counter += 1
			elsif counter == 3
				puts "What is player #{counter} name?"
				player3.name = gets.chomp
				puts "Nice to meet you #{player3.name}"
				counter += 1
			end

		end
		puts "#{dealer.name} will start the game now"
		@players = player_num
		players_start
	end

	def players_start
		if @players == 3
			start_game player1
			start_game player2
			start_game player3
		elsif @players == 2
			start_game player1
			start_game player2
			
		else 
			start_game player1
		end
	start_game dealer
	check_win player1
	game


	end

	def start_game user
		puts
		puts "#{user.name}" + ", let's start!"
		user.cards.push(deck.new_deck.pop)
		user.cards.push(deck.new_deck.pop)
		puts "#{user.name}" + " received " + user.cards.to_s
		puts (value_hand user)
	end
	
	def value_hand user
		puts "#{user.name} has #{user.card_value} points!"
	end
	
	def check_win user
		if (user.card_value) == 21 
			if (dealer.card_value) == 21
				puts "The game is a draw"
				playagain
			else
				puts "#{user.name} is the winner!"
				playagain
			end
		
		elsif (dealer.card_value) == 21
			puts "#{dealer.name} is the winner!"
			playagain
		elsif (user.card_value) > 21
			user.cards.each_with_index do |weaken, index|
				if weaken[0..4] == "Ace o" 
					user.cards[index] = "- Ace"
					puts "Ace has been reduced to 1 to keep you in the game!"
					value_hand user
					break
				end
			end
			if user.card_value > 21
				puts "#{user.name} has lost the game!"
				playagain
			end
		elsif (dealer.card_value) > 21
			dealer.cards.each_with_index do |weaken, index|
				if weaken[0..4] == "Ace o" 
					dealer.cards[index] = "- Ace"
					puts "Ace has been reduced to 1 to keep you in the game!"
					value_hand dealer
					break
				end
			end
			if dealer.card_value > 21
				puts "#{dealer.name} has lost the game!"
				playagain
			end


		end
	end

	def draw_card user
		user.cards.push(deck.new_deck.pop)
		puts "#{user.name} has received a new card. Your new hand is:"+ user.cards.to_s
		value_hand user
		check_win user
	end



	def game
		puts
		puts
		puts "What would you like to do?"
		puts "Stand or hit?"
		puts
		while true
			puts "Choose 1) Hit 2) Stand"
			request = gets.chomp
				if request == "1"
					draw_card player1
				elsif request == "2"
					stand_end
				else
					puts "Enter either 1 or 2...."
				end
		end
	end

	def stand_end
		while dealer.card_value < 17
			draw_card dealer

		end
		if dealer.card_value > player1.card_value
			puts "Dealer has more points!"
			puts "Dealer wins!"
			playagain
		elsif dealer.card_value == player1.card_value
			puts "Points are equal, it's a draw!"
			playagain
			
		else
			puts "#{player1.name} has more points!"
			puts "#{player1.name} wins!"
			playagain

		end
	end

	def playagain
		puts "Would you like to play again?"
		while true
		answer = gets.chomp.downcase
		if answer == "yes"
			player1.cards = []
			dealer.cards = []
			deck = Deck.new
			players_start
			game
		elsif answer == "no"
			puts "Okay, enjoy your day!"
			exit
		else
			puts "Please enter yes or no!"

		end
		end
	end

end

chris = Blackjack.new


