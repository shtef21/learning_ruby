=begin
2. Medium Assignment: Palindrome Checker
Problem: Write a program that checks whether a given string is a palindrome (i.e., it reads the same forward and backward).

Requirements:

The program should take a string as input.

It should ignore case and non-alphanumeric characters (spaces, punctuation, etc.) when checking for a palindrome.

Return True if the string is a palindrome and False otherwise.

Example:

Input: "A man, a plan, a canal, Panama"

Output: True (ignoring punctuation and spaces, it’s a palindrome)
=end

puts "Welcome to the palindrome checker."
puts "Palindrome - string read the same backwards, counting only alphanumeric characters."
print "\nYour input: "

input_str = gets.chomp
input_raw = input_str.downcase.gsub(/[^0-9a-z]/, "")
result = input_raw == input_raw.reverse

puts "Processing...\n\t \"#{input_raw}\" == \"#{input_raw.reverse}\""
puts "Output: #{result}"
