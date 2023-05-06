# DESCRIPTION:
# You're writing code to control your town's traffic lights. You need a function to handle each change from green, to yellow, to red, and then to green again.

# Complete the function that takes a string as an argument representing the current state of the light and returns a string representing the state the light should change to.

# For example, when the input is green, output should be yellow.

COLORS = %w[green yellow red]
def update_light(current)
#   case current
#     when 'green'; 'yellow'
#     when 'yellow'; 'red'
#     when 'red'; 'green'
#   end
#             OR
  i = COLORS.find_index(current) + 1
  COLORS.at(i % COLORS.size)
end
