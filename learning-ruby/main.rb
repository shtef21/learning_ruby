


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



# Create function
def hi
  puts "Hi!"
end
hi
hi()
puts

# Function param
def heya(name)
  puts "Hey #{name}!"
end
heya("John")            # Say hi to John
#heya                   # wrong number of arguments (given 0, expected 1) (ArgumentError)
heya("joHnN".capitalize) # Properly capitalize
puts



# Class to greet
class Greeter

  def initialize(name = "World")
    # 'at' denotes class param
    @name = name
  end

  def say_hi
    puts "Hi #{@name}!"
  end

  def say_bye
    puts "Bye #{@name}, come back soon."
  end

end



# Create and use object
generic_greeter = Greeter.new
#john_greeter   # main.rb:67:in `<main>': undefined local variable or method `john_greeter' for main:Object (NameError)
john_greeter = Greeter.new('jOhN'.capitalize)


#TODO:  Continue from here:  https://www.ruby-lang.org/en/documentation/quickstart/3/
