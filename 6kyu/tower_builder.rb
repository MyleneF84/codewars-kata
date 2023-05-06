# DESCRIPTION:
# Build Tower
# Build a pyramid-shaped tower, as an array/list of strings, given a positive integer number of floors. A tower block is represented with "*" character.

# For example, a tower with 3 floors looks like this:

# [
#   "  *  ",
#   " *** ",
#   "*****"
# ]
# And a tower with 6 floors looks like this:

# [
#   "     *     ",
#   "    ***    ",
#   "   *****   ",
#   "  *******  ",
#   " ********* ",
#   "***********"
# ]

def towerBuilder(n_floors)
  stars = *(1..(n_floors * 2)).select(&:odd?).reverse
  stars.map.with_index { |star, i| " " * i + "*" * star + " " * i }.reverse
end
