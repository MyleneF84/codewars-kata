# DESCRIPTION:
# When provided with a letter, return its position in the alphabet.

# Input :: "a"

# Ouput :: "Position of alphabet: 1"

def position(alphabet)
  "Position of alphabet: #{alphabet.bytes[0] - 96}"
 end
