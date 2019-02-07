def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = rand(1..11)
end

def display_card_total(deal_card)
  # code #display_card_total here
  cardTotal = 0
  cardTotal += deal_card
  puts "Your cards add up to #{cardTotal}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  answer = gets.chomp
end

def end_game(cardTotal)
  # code #end_game here
  puts "Sorry, you hit #{cardTotal}. Thanks for playing!"
end

def initial_round  # code #initial_round here
  cardTotal = 0
  display_card_total(deal_card + deal_card)
  return (deal_card + deal_card)
end

def hit?(cardTotal)
  # code hit? here
  prompt_user
  answer = get_user_input
 if answer == 'h'
      display_card_total(cardTotal += deal_card)
      return cardTotal
      elsif answer == 's'
      return cardTotal
      else
      prompt_user
  end
  end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  initial_round
  cardTotal = initial_round
  until cardTotal > 21
      cardTotal = hit?(cardTotal)
      display_card_total(cardTotal)
  end
end_game(cardTotal)
end
