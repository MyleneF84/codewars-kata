# DESCRIPTION:
# Debug celsius converter
# Your friend is traveling abroad to the United States so he wrote a program to convert fahrenheit to celsius. Unfortunately his code has some bugs.

# Find the errors in the code to get the celsius converter working properly.

# To convert fahrenheit to celsius:

# celsius = (fahrenheit - 32) * (5/9)
# Please round to 5dp (use .round(5))

def weather_info (temp)
  c = ((temp - 32) * (5/9.to_f)).round(5)
  "#{c} #{c > 0 ?  "is above freezing temperature" : "is freezing temperature"}"
end
