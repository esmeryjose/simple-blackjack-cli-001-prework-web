def welcome
  puts("Welcome to the Blackjack Table")
end

def deal_card
  c = rand(1...11)
end

def display_card_total(ct)
  # code #display_card_total here
  puts("Your cards add up to #{ct}")
end

def prompt_user
  # code #prompt_user here
  puts("Type 'h' to hit or 's' to stay")
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(ct)
  # code #end_game here
  puts("Sorry, you hit #{ct}. Thanks for playing!")
end

def initial_round
  # code #initial_round here
  ct = deal_card + deal_card
  display_card_total(ct)
  ct
end

def hit?(ct)
  # code hit? here
  prompt_user
  i = get_user_input
  if i == "s"
    ct
  elsif i == "h"
    ct+=deal_card
  else
    invalid_command
    ct
  end
end

def invalid_command
  # code invalid_command here
  puts("Hey! You can't use that command! Try Again")
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  ct=initial_round
  until ct>21
    ct=hit?(ct)
    display_card_total(ct)
  end
  end_game(ct)
end
