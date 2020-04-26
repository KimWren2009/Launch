numbers = {
  high:   100,
  medium: 50,
  low:    10
}

half_number = numbers.map do |k, v|
  v / 2
end

p half_number