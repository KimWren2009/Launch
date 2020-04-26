def time_of_day(daylight)
  if daylight == true
    "It's daytime!"  
  else
    "It's nighttime!"
  end
end

daylight = [true, false].sample

puts time_of_day(daylight)