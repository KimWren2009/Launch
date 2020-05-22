require 'yaml'
MESSAGES = YAML.load_file('rock_paper_scissors.yml')

RULES = {
  'r' => { name: 'rock', beats: %w(l s) },
  'p' => { name: 'paper', beats: %w(r sp) },
  'sc' => { name: 'scissors', beats: %w(p l) },
  'l' => { name: 'lizard', beats: %w(sp p) },
  'sp' => { name: 'spock', beats: %w(sc r) }
}.freeze

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_choices
  prompt(MESSAGES['choose_move'])
  RULES.each do |key, value|
    puts "'#{key}' for #{value[:name]}"
  end
end

def display_scoreboard(scores)
  scoreboard = <<-MSG

  **** SCOREBAORD ****
  Player: #{scores[:player]}  Computer: #{scores[:computer]}

  MSG
  puts scoreboard
end

def valid_input?(choice)
  RULES.key?(choice)
end

def winner_round(player, computer)
  if RULES[player][:beats].include?(computer)
    player
  elsif RULES[computer][:beats].include?(player)
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
    prompt('You won this round!')
  elsif winner == computer
    prompt('Computer won this round :(')
  else
    prompt('It\'s a tie!')
  end
end

def play_again?
  prompt(MESSAGES['play_again'])
  answer = Kernel.gets.chomp
  if answer.downcase.start_with?('y')
    true
  else
    puts "Are you sure you want to end the game? 'y' to exit."
    answer = Kernel.gets.chomp
    true if answer.downcase.start_with?('n')
  end
end

player = ''
computer = ''

scores = { player: 0, computer: 0 }

system('clear')
prompt(MESSAGES['welcome'])
prompt(MESSAGES['rules'])

loop do
  loop do
    display_scoreboard(scores)
    display_choices
    loop do
      player = Kernel.gets.chomp
      break if valid_input?(player)
      prompt(MESSAGES['invalid_choice'])
    end
    system('clear')
    break
  end

  computer = RULES.keys.sample

  update_scoreboard(player, computer, scores)
  display_scoreboard(scores)
  puts("You: #{RULES[player][:name]}; Computer: #{RULES[computer][:name]}")
  display_results(player, computer)

  break if scores[:player] == 5 || scores[:computer] == 5

  break unless play_again?
  system('clear')
end
system('clear')

puts("You: #{RULES[player][:name]}; Computer: #{RULES[computer][:name]}")
display_results(player, computer)
prompt('GAME OVER')
display_scoreboard(scores)
prompt(MESSAGES['thanks'])
