VALID_CHOICES = %w(rock paper scissors lizard spock)

WINNING_RULES = { 'rock' => ['scissors', 'lizard'],
                  'paper' => ['rock', 'spock'],
                  'scissors' => ['paper', 'lizard'],
                  'lizard' => ['spock', 'paper'],
                  'spock' => ['scissors', 'rock']
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def round_winner(player, computer, pairs)
  if pairs
  end
end

def display_choices
  prompt('YOUR CHOICES ARE:')
  player_choices = <<-MSG
  rock (r)
  paper (p)
  scissors (sc)
  lizard (l)
  spock (sp)
  MSG
  puts player_choices
end

def get_player_choice
  choice = ''
  loop do
    display_choices()
    choice = Kernel.gets.chomp
    choice = convert_choice(choice)
    break if valid_input?(choice)
    prompt("That's not a valid choice.")
  end
  choice
end

def convert_choice(choice)
  case choice
  when 'r' then 'rock'
  when 'p' then 'paper'
  when 'sc' then 'scissors'
  when 'l' then 'lizard'
  when 'sp' then 'spock'
  end
end

def valid_input?(choice)
  VALID_CHOICES.include?(choice)
end

def display_results(player, computer)
  if winning_pairs[player].include?
    prompt('You won!')
  elsif winning_pairs[computer].include?
    prompt('Computer won :(')
  else
    prompt('It\'s a tie!')
  end
end

choice = ''
player_score = 0
computer_score = 0

loop do
  player_choice = get_player_choice()
  computer_choice = VALID_CHOICES.sample

  Kernel.puts("You chose: #{player_choice}; Computer chose: #{computer_choice}")

  display_results(player_choice, computer_choice)

  if win?(player_choice, computer_choice)
    player_score += 1
  elsif win?(computer_choice, player_choice)
    computer_score += 1
  end

  prompt("Your score is #{player_score}")
  prompt("The computer score is #{computer_score}")
  break if player_score == 5 || computer_score == 5

  prompt('Do you want to play again?')
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
  system('clear')
end

system('clear')
prompt('GAME OVER')
prompt("The final score is Player: #{player_score} to Computer: #{computer_score}")
prompt('Thanks for playing!')
