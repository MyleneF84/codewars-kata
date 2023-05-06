# DESCRIPTION:
# In this Kata, you will be given a string and your task will be to return a list of ints detailing the count of uppercase letters, lowercase, numbers and special characters, as follows.

# Solve("*'&ABCDabcde12345") = [4,5,5,3].
# --the order is: uppercase letters, lowercase, numbers and special characters.

def solve s
  res = []
  u = s.scan(/[A-Z]/).size
    res << u
  d = s.scan(/[a-z]/).size
    res << d
  n = s.scan(/[0-9]/).size
    res << n
  s = s.size - res.sum
    res << s

  res
end
