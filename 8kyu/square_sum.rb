# DESCRIPTION:
# Complete the square sum function so that it squares each number passed into it and then sums the results together.

# For example, for [1, 2, 2] it should return 9

def square_sum(numbers)
  numbers.map(&:abs2).sum
  # numbers.map { |x| x * x }.sum
end
