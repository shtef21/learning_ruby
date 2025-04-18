=begin
8. 🔡 Anagram Groups (Medium-Hard)
Problem:
Group words that are anagrams of each other.

Input:
listen, enlist, hello, silent, olelh
Output:
[["listen", "enlist", "silent"], ["hello", "olelh"]]
=end

def word_value(word)
  word.chars.sort.join
end

def group_value(group)
  # Each word has same value, so take first
  word_value(group.first)
end

all_groups = []
print "Input (WORD_1, WORD_2, ...): "
input_arr = gets.split(",").map {|w| w.strip.downcase}

input_arr.each do |w|
  group_idx = all_groups.find_index{|gr| group_value(gr) == word_value(w)}
  if group_idx.nil?
    all_groups << [w]  # Add a new group
  else
    all_groups[group_idx] << w  # Append to a group
  end
end

puts "Output: #{all_groups}"
