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
  display_card_total = deal_card + deal_card
  puts "Your cards add up to #{display_card_total}"
  return display_card_total
end

def hit?(current_card_total)
  prompt_user
  input = get_user_input
  if input == "h"
    return deal_card + current_card_total
  else 
    return current_card_total
  end
end

def invalid_command
    puts "Please enter a valid command"
    prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  while card_total < 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  break if card_total > 21
  end
  end_game(card_total)
end
    
