# DESCRIPTION:
# Oh no!
# Some really funny web dev gave you a sequence of numbers from his API response as an sequence of strings!

# You need to cast the whole array to the correct type.

# Create the function that takes as a parameter a sequence of numbers represented as strings and outputs a sequence of numbers.

# ie:["1", "2", "3"] to [1, 2, 3]

# Note that you can receive floats as well.

def to_number_array(string_array)
  string_array.map { |n| n.include?('.') ? n.to_f : n.to_i }
end
