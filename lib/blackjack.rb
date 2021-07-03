def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  cardtotal = deal_card + deal_card
  display_card_total(cardtotal)
  cardtotal
end

def hit?(num)
  prompt_user
  input = get_user_input
  if input == 's'
    return num
  elsif input == 'h'
    num += deal_card
    return num
  else invalid_command
    hit?(num)
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
  card_total = initial_round
  while card_total <= 21 do
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
end_game(card_total)
end
    
