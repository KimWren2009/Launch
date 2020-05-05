birthday = Time.local(1991, 8, 3, 21, 11)
epoch = Time.local(1970, 1, 1, 00, 00)
today = Time.new

seconds = today - birthday
seconds_until_b = 1_000_000_000 - seconds
seconds_until_b
days = seconds_until_b / 60 / 60 / 24
years = days / 365
remaining = days % 365

puts "I will be a billion seconds old in #{years.to_i} years and #{remaining.to_i} days."