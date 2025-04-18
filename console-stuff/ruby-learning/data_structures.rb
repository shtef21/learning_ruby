
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