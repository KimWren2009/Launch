require 'yaml'
MESSAGES = YAML.load_file('mortgage_calculator_messages.yml')

def prompt(message)
  puts("=> #{message}")
end

def retrieve_input(input_type)
  input = nil
  loop do
    input = gets.chomp
    break if valid_input?(input, input_type)
    invalid_input_message(input_type)
  end
  system('clear')
  input
end

def valid_input?(input, input_type)
  case input_type
  when 'loan_amount'
    input.to_i.to_s == input && input.to_i > 0
  when 'annual_interest'
    input.to_i.to_s == input && input.to_i > 0 ||
      input.to_f.to_s == input && input.to_i > 0
  when 'duration_years'
    input.to_i.to_s == input && valid_duration?(input)
  end
end

def valid_duration?(input)
  duration_options = %w(10 15 20 25 30 40)
  duration_options.include?(input)
end

def invalid_input_message(input_type)
  case input_type
  when 'loan_amount'
    prompt(MESSAGES['invalid_loan_amount'])
  when 'annual_interest'
    prompt(MESSAGES['invalid_apr'])
  when 'duration_years'
    prompt(MESSAGES['invalid_duration'])
  end
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
  duration_months = (duration_years.to_i * 12)
  monthly_payment = loan_amount.to_i *
                    (monthly_interest.to_f /
                    (1 - (1 + monthly_interest.to_f)**-duration_months))

  puts "Your monthly payment is: $#{format('%02.2f', monthly_payment)}."

  prompt(MESSAGES['calculate_again'])
  answer = gets.chomp.downcase
  break unless answer == 'y' || answer == 'yes'
  system('clear')
end

prompt(MESSAGES['goodbye'])
