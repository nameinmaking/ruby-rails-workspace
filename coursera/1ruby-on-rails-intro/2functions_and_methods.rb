# Predicate method example
def can_divide_by?(number)
  return false if number.zero?
  true
end

puts can_divide_by? 3 # => true
puts can_divide_by? 0 # => false

# Default values
def factorial (n)
  # ternary operator
  # condition ? true : false
  n == 0 ? 1 : n * factorial(n-1)
end


def factorial_with_default (n = 5)
  n == 0 ? 1 : n * factorial_with_default(n-1)
end
puts factorial(5) # => 120
puts factorial_with_default # => 120
puts factorial_with_default(3) # => 6

# Splat Example
def max(one_param, *numbers, another)
  # Variable length parameters passed in
  # becomes an array
  numbers.max
end

puts max("Something", 7, 32, -4, "more") # => 32
