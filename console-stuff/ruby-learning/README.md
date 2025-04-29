
# What's happening?

Main 1 to 3 are files that run code from the
following quickstart tutorial:
https://www.ruby-lang.org/en/documentation/quickstart

Furthermore, this README may hold various tips and things
that I found strange in Ruby and would like to explain
additionally.



# Miscellaneous

## Symbols vs strings

Symbols are something like a string, but internalized.
Or a constant string.

```rb
# Uses more memory for both objects:
"first".object_id != "first".object_id

# Are the same object:
:second.object_id == :second.object_id
```


## attr_reader, attr_writer and attr_accessor

### Getter

```rb
class Person
  def name
    @name # simply returning an instance variable @name
  end
end

person = Person.new
person.name            # => does not throw error
person.name = "Dennis" # => no method error
```

### Getter & setter

```rb
class Person2
  def name
    @name
  end
  def name=(new_name)
    @name = new_name
  end
end

person2 = Person2.new
person2.name = 'Dennis'
person2.name          # => returns "Dennis"
```

### In short

```rb
class Person3
  attr_reader :name
  attr_writer :name
end

# Or in simpler terms:

class Person4
  attr_accessor :name
end

# This reads as "Call a method attr_accessor and send it a :name argument"
```


## Square brackets []

```rb
class MyArray
  def self.[]
    puts "Square brackets called through class name"
  end

  def []
    puts "Square brackets called through an object"
  end
end

MyArray[]    # Output: "Square brackets called through class name"
obj = MyArray.new
obj[]        # Output: "Square brackets called through an object"
```


## Comments

```ruby
# Single line comments

=begin
Multiline comment
=end
```


## each_with... methods

Useful for traversing

```ruby
["a", "b", "c"].each_with_index do |val, idx|
  puts "#{idx}: #{val}"
end
# Output:
# 0: a
# 1: b
# 2: c

[1, 2, 3].each_with_object([]) do |num, arr|
  arr << num * 2
end
# => [2, 4, 6]

```
