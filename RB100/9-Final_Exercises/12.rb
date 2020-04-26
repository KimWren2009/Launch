# Using the hash you created from the previous exercise, 
# demonstrate how you would access Joe's email and Sally's 
# phone number?

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

joe_data = { :email => contact_data[0][0], :address => contact_data[0][1], :phone => contact_data[0][2] }
contacts["Joe Smith"] = joe_data
sallys_data = { :email => contact_data[1][0], :address => contact_data[1][1], :phone => contact_data[1][2] }
contacts["Sally Johnson"] = sallys_data

puts "Joe's email: #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number: #{contacts["Sally Johnson"][:phone]}"

contacts