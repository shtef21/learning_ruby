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
#john_greeter   # main.rb:67:in `<main>': undefined local variable or method `john_greeter' for main:Object (NameError)
john_greeter = Greeter.new('jOhN'.capitalize)

