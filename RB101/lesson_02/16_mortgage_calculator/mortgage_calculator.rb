require 'yaml'
MESSAGES = YAML.load_file('mortgage_calculator_messages.yml')

def prompt(message)
  puts("=> #{message}")
end

def valid_loan?(amount)
  amount.to_i.to_s == amount
end

def valid_apr?(percentage)
  percentage.to_f.to_s == percentage || percentage.to_i.to_s == percentage
end

prompt(MESSAGES['welcome'])

loan_amount = nil
annual_interest = nil
years = nil
years_options = %w(10 15 20 25 30 40)

loop do
  prompt(MESSAGES['input_loan_amount'])
  loop do
    loan_amount = gets.chomp
    break if valid_loan?(loan_amount)
    prompt(MESSAGES['invalid_loan_amount'])
  end

  puts "Great! The loan amount is #{loan_amount}. What is the APR (%)?"
  loop do
    annual_interest = gets.chomp
    break if valid_apr?(annual_interest)
    prompt(MESSAGES['invalid_apr'])
  end

  puts 'What is the duration of your mortgage (in years)?'
  loop do
    years = gets.chomp
    break if years.to_i.to_s == years && years_options.include?(years)
    prompt(MESSAGES['invalid_duration'])
  end

  monthly_interest = ((annual_interest.to_f / 100) / 12)
  months = (years.to_i * 12)
  monthly_payment = loan_amount.to_i *
                    (monthly_interest.to_f /
                    (1 - (1 + monthly_interest.to_f)**-months))

  puts "Your monthly payment is: $#{format('%02.2f', monthly_payment)}."

  prompt(MESSAGES['another_loan'])
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
end

prompt(MESSAGES['goodbye'])
