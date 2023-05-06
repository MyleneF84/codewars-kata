# The function is not returning the correct values. Can you figure out why?

# Example (Input --> Output ):

# 3 --> "Earth"
# def get_planet_name(id)
#   # This doesn't work; Fix it!
#   name = ''
#   switch id
#     case 1: name = "Mercury"
#     case 2: name = "Venus"
#     case 3: name = "Earth"
#     case 4: name = "Mars"
#     case 5: name = "Jupiter"
#     case 6: name = "Saturn"
#     case 7: name = "Uranus"
#     case 8: name = "Neptune"
#   end
#   return name
# end

def get_planet_name(id)
  case id
    when 1; name = "Mercury"
    when 2; name = "Venus"
    when 3; name = "Earth"
    when 4; name = "Mars"
    when 5; name = "Jupiter"
    when 6; name = "Saturn"
    when 7; name = "Uranus"
    when 8; name = "Neptune"
  end
end
