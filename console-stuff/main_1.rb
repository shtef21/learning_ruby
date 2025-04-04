# Source:
#   https://www.ruby-lang.org/en/documentation/quickstart/


# Inline variable
"Hello world"



# Print a string
puts "Hello world"
# String interpolation only works for "
world_type = 'Mars'
puts "Hello #{world_type}"
puts 'Hello #{world_type}'
# Put a newline to separate other code
puts



x = 1
y = 2
puts "x + y = " + x.to_s + y.to_s
#puts "x + y = " + x + y            #! no implicit conversion of Integer into String (TypeError)
puts "x + y = " + (x + y).to_s
puts



# Do some math
puts "Math operations: +, *, **, sqrt"
puts 3 + 2
puts 3 * 2
puts 3 ** 2
puts Math.sqrt(9)
puts


=begin
This is a
multiline comment
=end
