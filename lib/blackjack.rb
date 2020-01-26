def welcome
 puts "Welcome to the Blackjack Table"
  
end

def deal_card
  rand(1..11)
end

def display_card_total(cart_total)
  puts "Your cards add up to #{cart_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
    return gets.chomp 
end

def end_game(cart_total)
  puts "Sorry, you hit #{cart_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(current_cart_total)
  prompt_user
  input = get_user_input
  if input == "s"
    current_cart_total
  elsif input == "h"
    deal_card + current_cart_total
  else 
    invalid_command
    hit?(current_cart_total)
 end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  cart_total = initial_round
  until cart_total > 21
  cart_total = hit?(cart_total)
  display_card_total(cart_total)
  end_game(cart_total)
  end
end
    
