def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if reply == 'yes'
      return true
    elsif reply == 'no'
      return false
    else
      puts "Please answer 'yes' or 'no'."
    end
  end
end

ask('Do you like eating tacos?')
ask('Do you like eating burritos?')
wet_bed = ask('Do you wet the bed?')
ask('Do you like eating chimichangas?')

puts wet_bed