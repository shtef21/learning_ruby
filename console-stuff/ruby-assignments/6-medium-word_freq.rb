=begin
6. 🔤 Word Frequency (Medium)
Problem:
Count how many times each word appears in a string, ignoring case and punctuation.

Input:
"The cat, the CAT! sat on the mat."
Output:
{"the"=>3, "cat"=>2, "sat"=>1, "on"=>1, "mat"=>1}
=end

print "Input: "
input = gets.chomp
stripped = input.gsub(/[^a-zA-Z0-9 ]/, "").downcase

counter = Hash.new(0)
stripped.split(" ").each {|w| counter[w] += 1 }

# sorted_counter = counter.sort_by {|k, v| -v}.to_h
puts "Output: #{counter}"
