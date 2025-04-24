
=begin
A data structure is a term used for
  a special way of organizing and accessing data.

In Ruby, there are THREE basic data structures:
  1. Scalars:
      - hold a single value such as number or a string
  2. Arrays:
      - ordered lists of scalars
  3. Hashes:
      - key-value pairs where keys are unique strings
        and the values are scalars
=end


# ARRAYS
out = []
10.times { |i| out << i }  # Append numbers 0..9 into "out"
=begin
Operations on arrays:
  push	  O(1)
  pop	    O(1)
  access	O(1)
  find	  O(n)
  delete	O(n)
=end

# ----- Using Array.new Method

# Without Arguments
arr = Array.new
puts arr.size # Output: 0

# With Size Argument
arr = Array.new(7)
puts arr.length # Output: 7

# With Size and Default Value
arr = Array.new(4, "GFG")
puts "#{arr}" # Output: ["GFG", "GFG", "GFG", "GFG"]

# Using Literal Constructor []
arr = ['a', 'b', 'c', 'd', 'e', 'f']
puts "#{arr}" # Output: ["a", "b", "c", "d", "e", "f"]
puts arr.size # Output: 6
puts arr.length # Output: 6

#Using Range
arr1 = ('1'..'6').to_a
puts "#{arr1}" # Output: ["1", "2", "3", "4", "5", "6"]
arr2 = *'11'..'15'
puts "#{arr2}" # Output: ["11", "12", "13", "14", "15"]

# These methods provide flexibility in creating arrays with different initial values and sizes.



# HASHES
"aaabcd"
  .each_char
  .with_object(Hash.new(0)) { |ch, hash| hash[ch] += 1 }
# Explanation:
#   Iterate each char with a single hash
#   and fill it with char instance count.
#   Create a hash object with default value 8
# {"a"=>3, "b"=>1, "c"=>1, "d"=>1}
=begin
Operations on hashes:
  store	        O(1)
  access	      O(1)
  delete	      O(1)
  find (value)	O(n)
=end