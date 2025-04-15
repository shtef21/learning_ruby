=begin
1. Easy Assignment: Sum of Odd Numbers
Problem: Write a program that takes a positive integer n as input and outputs the sum of all odd numbers between 1 and n (inclusive).

Requirements:

The program should prompt the user to enter a number n.

If the input is invalid (e.g., a negative number or non-numeric input), the program should handle it gracefully.

Output the sum of all odd numbers between 1 and n.

Example:

Input: 10

Output: 25 (since 1 + 3 + 5 + 7 + 9 = 25)
=end

print "Input a number: "
num = gets.to_i
sum = 0

if num >= 1
  print "Odd numbers:"
  (1..num).each_slice(2) {
      |odd, even|
      sum += odd
      print " #{odd}"
  }
  puts "\nSum: #{sum}"

else
  puts "Invalid input. Please enter a number in range [1, Infinity>"
end

