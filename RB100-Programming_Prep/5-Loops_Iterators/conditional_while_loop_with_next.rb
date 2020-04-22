# a conditional loop with next

x = 0

while x <= 10
  if x == 3
    next
  elsif x.odd?
    puts x
  end
  x += 1
end

# We use the next reserved word here to avoid printing the number 3 in our loop. 