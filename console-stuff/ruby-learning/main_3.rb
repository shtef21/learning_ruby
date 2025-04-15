# Source:
#   https://www.ruby-lang.org/en/documentation/quickstart/3


# Class to greet (copied from main_2)
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
#john_greeter   # main_3.rb:27:in '<main>': undefined local variable or method 'john_greeter' for main (NameError)
john_greeter = Greeter.new('jOhN'.capitalize)

puts '--> Generic greeter methods:'
generic_greeter.say_hi
generic_greeter.say_bye
puts Greeter.instance_methods.to_s
puts Greeter.instance_methods(include_super=false).to_s

puts '--> John greeter methods:'
john_greeter.say_hi
john_greeter.say_bye
#john_greeter.@name  # main_3.rb:37: syntax error found (SyntaxError) 

puts "Respond to name: #{generic_greeter.respond_to?("name")}"  # false


# Alter the class (view or change name)
class Greeter
  attr_accessor :name
end

andy_greeter = Greeter.new("Andy")
puts "Respond to name: #{andy_greeter.respond_to?("name")}"  # false
puts "Respond to name: #{andy_greeter.respond_to?("name=")}"  # true




class MegaGreeter
  attr_accessor :names  # Defines getter and setter

  # Create the object
  def initialize(names= "world")
    @names = names
  end

  # Say hi to everyone
  def say_hi
    # If names is nil
    if @names.nil?
      puts "..."
    # If names is iterable
    elsif @names.respond_to?(:each)   # Symbol argument
    #elsif @names.respond_to?("each")  # String argument
      @names.each do |name|
        puts "Hello #{name}"
      end
    else
      puts "Hello #{names}"
    end
  end

  # Say bye to everyone
  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?(:join)
      puts "Bye #{@names.join(", ")}. Come back soon!"
    else
      puts "Bye #{@names}. Come back soon!"
    end
  end
end


# Run if main_3 has been directly called
#   __FILE__ - magic variable that contains the name of the current file
#   $0 - name of the file used to start the program
if __FILE__ == $0
  puts "Running code directly in main_3.rb"

  mg = MegaGreeter.new
  #mg.respond_to?(:names=)  # If contanis names setter
  mg.say_hi
  mg.say_bye

  # Change name to be "Zeke"
  mg.names = "Zeke"
  mg.say_hi
  mg.say_bye

  # Change name to be array of names
  mg.names = ["Albert", "Brenda", "Charles", "Dave", "Engelbert"]
  mg.say_hi
  mg.say_bye

  # Change to nil
  mg.names = nil
  mg.say_hi
  mg.say_bye
end
