# Implement your procedural solution here!

def palindrome?(number)
  number.to_s == number.to_s.reverse
end

def largest_palindrome_product(range = 1..999)
  array = []
  range.each do |x|
    range.each do |y|
      array.push(x * y)
    end
  end
  array.select { |n| palindrome?(n) }.max
end
