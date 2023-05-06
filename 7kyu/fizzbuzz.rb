# DESCRIPTION:
# Return an array containing the numbers from 1 to N, where N is the parametered value.

# Replace certain values however if any of the following conditions are met:

# If the value is a multiple of 3: use the value "Fizz" instead
# If the value is a multiple of 5: use the value "Buzz" instead
# If the value is a multiple of 3 & 5: use the value "FizzBuzz" instead
# N will never be less than 1.

# Method calling example:

# fizzbuzz(3) -->  [1, 2, "Fizz"]

def fizzbuzz(n)
  r = (1..n).to_a.map { |el|
    case
      when el % 3 == 0 && el % 5 == 0; "FizzBuzz"
      when el % 3 == 0; "Fizz"
      when el % 5 == 0; "Buzz"
      else el
    end }
end
