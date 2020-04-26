# DO/WHILE LOOP

loop do
  puts "Do you want to do that again?"
    answer = gets.chomp
    if answer != 'Y'
      break
    end
  end

  # this type of loop executes the code within the loop once before evaluating the condition.

  # difference syntax for DO/WHILE loop, not recommended

  begin
    puts "Do you want to do that again?"
      answer = gets.chomp
    end while answer == 'Y'