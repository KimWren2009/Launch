def hello
  "hello"
end

def world
  "world"
end

def greet
  caph = hello.capitalize 
  capw = world.capitalize
  "#{caph} #{capw}"
end

puts greet
