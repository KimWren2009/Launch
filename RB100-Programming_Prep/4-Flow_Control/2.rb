def cap(string)
  if string.length >= 10
    puts string.upcase
  elsif string.length < 10
    puts "Type something longer and I will yell it back to you."
  end
end

cap("Hello, my name is Kim!")