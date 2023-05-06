# DESCRIPTION:
# Return the number (count) of vowels in the given string.

# We will consider a, e, i, o, u as vowels for this Kata (but not y).

# The input string will only consist of lower case letters and/or spaces.

def get_count(input_str)
  count = 0
  voyels = %w[a e i o u]
  input_str.chars.each { |el| count += 1 if voyels.include?(el)}
  return count
end

