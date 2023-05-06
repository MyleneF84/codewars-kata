# DESCRIPTION:
# You are given an array. Complete the function that returns the number of ALL elements within an array, including any nested arrays.

# Examples
# []                   -->  0
# [1, 2, 3]            -->  3
# ["x", "y", ["z"]]    -->  4
# [1, 2, [3, 4, [5]]]  -->  7
# The input will always be an array.

def deep_count(a)
  count = a.flatten.count
  count += a.to_s.count('[') - 1
end
