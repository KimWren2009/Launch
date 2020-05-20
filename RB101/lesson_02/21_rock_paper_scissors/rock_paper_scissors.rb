require 'yaml'
MESSAGES = YAML.load_file('rock_paper_scissors.yml')

VALID_CHOICES = %w(rock paper scissors lizard spock).freeze

WINNING_RULES = { 'rock' => %w(scissors lizard),
                  'paper' => %w(rock spock),
                  'scissors' => %w(paper lizard),
                  'lizard' => %w(spock paper),
                  'spock' => %w(scissors rock) }.freeze

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_choices
  prompt(MESSAGES['choose_move'])
  player_choices = <<-MSG
  rock (r)
  paper (p)
  scissors (sc)
  lizard (l)
  spock (sp)
  MSG
  puts player_choices
end

def display_scoreboard(scores)
  scoreboard = <<-MSG

  **** SCOREBAORD ****
  Player: #{scores[:player]}  Computer: #{scores[:computer]}

  MSG
  puts scoreboard
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

def winner_round(player, computer)
  if WINNING_RULES[player].include?(computer)
    player
  elsif WINNING_RULES[computer].include?(player)
    computer
  end
end

def update_scoreboard(player, computer, scores)
  winner = winner_round(player, computer)
  if winner == player
    scores[:player] += 1
  elsif winner == computer
    scores[:computer] += 1
  end
end

def display_results(player, computer)
  winner = winner_round(player, computer)
  if winner == player
    prompt('You won!')
  elsif winner == computer
    prompt('Computer won :(')
  else
    prompt('It\'s a tie!')
  end
end

def play_again?
  prompt(MESSAGES['play_again'])
  answer = Kernel.gets.chomp
  true if answer.downcase.start_with?('y')
end

player_choice = ''

scores = { player: 0, computer: 0 }

system('clear')
prompt(MESSAGES['welcome'])
prompt(MESSAGES['rules'])

loop do
  loop do
    display_scoreboard(scores)
    display_choices
    player_choice = Kernel.gets.chomp
    player_choice = convert_choice(player_choice)
    break if valid_input?(player_choice)
    system('clear')
    prompt(MESSAGES['invalid_choice'])
  end

  computer_choice = VALID_CHOICES.sample

  Kernel.puts("You chose: #{player_choice}; Computer chose: #{computer_choice}")
  update_scoreboard(player_choice, computer_choice, scores)
  display_results(player_choice, computer_choice)
  display_scoreboard(scores)

  break if scores[:player] == 5 || scores[:computer] == 5

  break unless play_again?
  system('clear')
end
system('clear')

prompt('GAME OVER')
display_scoreboard(scores)
prompt(MESSAGES['thanks'])
