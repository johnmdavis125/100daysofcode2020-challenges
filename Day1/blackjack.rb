##########
# Players
##########

# Player - instance of class
# properties
#     name 
#     bankroll 
#     hand = []

class Player
    attr_accessor :name, :bankroll, :hand
    def initialize name, bankroll
        @name = name
        @bankroll = bankroll
        @hand = []
    end

    # def my_hand
    #     @hand
    # end

    # method that sums the player's 2 cards
end

#######################
# Building Cards & Deck
#######################

class Card
    attr_reader :value
    def initialize value
        @value = value
    end
end

# Creating the Deck
# This loop runs 4 times
    # Each iteration, creates 13 cards & pushes to the deck array
# deck = []

# 4.times do
#     i = 2
#     10.times do 
        
#         card = Card.new i

#         if i == 10
#             3.times do
#             card = Card.new i
#             deck.push(card)
#             end 
#         end

#         i += 1
#         deck.push(card)
#     end
# end
# p deck 

# shuffle the deck
# p deck.shuffle

#######################
# PSEUDO CODE
#######################

# print 2 random cards from the deck
# add the cards to player hand

# once we can deal cards, 
# we can determine who won that round


# then, we can make the game multiple rounds


# the game is a class
    # start_game method
        # prompt user for players name
    # build deck
    # shuffle deck
    # Game class ends here

    # loop starts
    # deal pc's hand -> blackjack.deal(pc) -> pc.hand[2 cards]
    # deal player's hand -> blackjack.deal(player) -> player.hand[2 cards]

    # sum player's cards - 'here's your total'
        # player method -> sumCards
        # player_cards[0] + player_cards[1] = sum
    
    # (bonus) -> ask player to hit or stay

    # check_win
        # sum pc cards

    # end_game
        # if players wins -> 'you win!'
            # take 10$ from pc
            # give player 10$
        # elsif -> pc wins -> 'you lose!' 
            # take 10$ from player
            # give pc 10$
        # else
            # -> 'it's a tie!'

    # prompt user (d)eal or (q)uit
        # reset the player hands to empty
        # (loop)

################
# GAME CLASS
################

class Game
    attr_accessor :name, :deck
    def initialize name
        @name = name
        @deck = []
    end

    # start_game method
    def start_game
        puts "Welcome to #{name}! Please enter your name below: "
        player_name = gets.chomp
        # prompt user for players name
        puts "Your player name is #{player_name}"
        puts "let's play!"
        player_name
    end

    # build the deck
    def build_deck
        4.times do
            i = 2
            10.times do 
                
                card = Card.new i
                
                if i == 10
                    3.times do
                        card = Card.new i
                        @deck.push(card)
                    end 
                end
                
                i += 1
                @deck.push(card)
            end
        end
        @deck.shuffle
    end # end build_deck

    # def get_cards
    #     top_two = @deck.pop(2)
    #     top_two
    # end

end # end Game class




blackjack = Game.new "Blackjack"

# starts the game
player1 = blackjack.start_game
# blackjack.build_deck
my_deck = blackjack.build_deck

new_player = Player.new player1, 100
new_pc = Player.new "mac", 10000

# p player_with_name
# p my_deck


    # start loop here
    
    #loop do
    # deal the cards
       # deal player's hand
       # deal pc's hand
        
        # p my_deck
        first_2 = my_deck.pop(2)
        # p "this is first_2 #{first_2}"
        second_2 = my_deck.pop(2)
        # p "this is second_2 #{second_2}"
        # p my_deck

        new_player_hand = new_player.hand.append(first_2)
        p "this is new_player_hand #{new_player_hand}"

        new_pc_hand = new_pc.hand.append(second_2)
        p "this is new_pc_hand #{new_pc_hand}"

        p new_player.name

        # check who wins
            # player's hand cards sum = x
            # pc's hand cards sum = y

            # if statement -> compares x & y
            # determines who wins the round

            # empty the cards
            # prompt deal or quit
        # end loop

