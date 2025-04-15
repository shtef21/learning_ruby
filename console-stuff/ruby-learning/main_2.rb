# Source:
#   https://www.ruby-lang.org/en/documentation/quickstart/2

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
