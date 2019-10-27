=begin
Given a number, write a function to output its reverse digits. (e.g. given 123 the answer is 321)

Numbers should preserve their sign; i.e. a negative number should still be negative when reversed.

Examples
 123 ->  321
-456 -> -654
1000 ->    1 
=end

def reverse_number(x)
  arr = x.to_s.split("").reverse
  if arr[-1] == "-"
    arr.pop
    arr.unshift("-")
  end
  result = arr.join("").to_i
end

puts reverse_number(-123)
puts reverse_number(-100)
