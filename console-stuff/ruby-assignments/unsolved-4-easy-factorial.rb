=begin
4. 🔁 Even Factorial (Easy)
Problem:
Take a number n, and return the product of all even numbers from 1 to n.

Input:
n = 6
Output:
48
(2 × 4 × 6 = 48)
=end

print "Input (1+): "
n = gets.to_i
product = 1
even_nums = []

if n > 1
  (1..n).each_slice(2) do |odd, even|
    product *= even
    even_nums << even
  end
  puts "Output: #{product} (#{even_nums.join(' x ')} = #{product})"
else
  puts "Invalid input!"
end
