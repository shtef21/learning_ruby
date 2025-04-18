=begin
Problem:
Print numbers from 1 to 100 with:

"Fizz" for multiples of 3

"Buzz" for multiples of 5

"FizzBuzz" for both

"Prime" for prime numbers (instead of Fizz/Buzz)

Output:
1
Prime
Fizz
4
Buzz
Fizz
Prime
8
Fizz
Buzz
11
Fizz
Prime
14
FizzBuzz
...
=end

max = 100

def is_prime(num)
  if num == 2
    return true
  end
  if num == 1 or num.even?
    return false
  end
  (3..Math.sqrt(num)).step(2) do |i|
    if num % i == 0
      return false
    end
  end
  return true
end

(1..max).each do |num|
  fbstr = ""
  if num % 3 == 0
    fbstr << "Fizz"
  end
  if num % 5 == 0
    fbstr << "Buzz"
  end

  if is_prime num
    puts "Prime"
  elsif not fbstr.empty?
    puts fbstr
  else
    puts num
  end
end
