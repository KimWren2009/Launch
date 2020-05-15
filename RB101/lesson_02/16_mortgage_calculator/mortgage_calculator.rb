require 'yaml'
MESSAGES = YAML.load_file('mortgage_calculator_messages.yml')
DURATION_OPTIONS = %w(10 15 20 25 30 40).freeze

def prompt(message)
  puts("=> #{message}")
end

def retrieve_input(input_type)
  input = nil
  loop do
    input = gets.chomp
    break if valid_input?(input, input_type)
    prompt(MESSAGES["invalid_#{input_type}"])
  end
  system('clear')
  input
end

def valid_input?(input, input_type)
  case input_type
  when 'loan_amount'
    valid_number?(input)
  when 'annual_interest'
    valid_number?(input)
  when 'duration_years'
    valid_number?(input) && valid_duration?(input)
  end
end

def valid_number?(input)
  input.to_i.to_s == input && input.to_i > 0 ||
    input.to_f.to_s == input && input.to_f > 0
end

def valid_duration?(input)
  DURATION_OPTIONS.include?(input)
end

def calculate_mortgage(loan_amount, monthly_interest, duration)
  loan_amount.to_i *
    (monthly_interest.to_f /
    (1 - (1 + monthly_interest.to_f)**-duration))
end

def new_calculation?
  prompt(MESSAGES['calculate_again'])
  answer = gets.chomp.downcase
  true if answer == 'y'
end

system('clear')

prompt(MESSAGES['welcome'])

loop do
  prompt(MESSAGES['input_loan_amount'])
  loan_amount = retrieve_input('loan_amount')

  puts "Great! The loan amount is #{loan_amount}. What is the APR (%)?"
  annual_interest = retrieve_input('annual_interest')

  puts "APR is #{annual_interest}. What is your mortgage duration (in years)?"
  duration_years = retrieve_input('duration_years')

  monthly_interest = ((annual_interest.to_f / 100) / 12)
  duration = (duration_years.to_i * 12)
  monthly_payment = calculate_mortgage(loan_amount, monthly_interest, duration)

  puts "Your monthly payment is: $#{format('%02.2f', monthly_payment)}."

  break unless new_calculation?
  system('clear')
end

prompt(MESSAGES['goodbye'])
