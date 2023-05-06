# DESCRIPTION:
# Return the century of the input year. The input will always be a 4 digit string, so there is no need for validation.

# Examples
# "1999" --> "20th"
# "2011" --> "21st"
# "2154" --> "22nd"
# "2259" --> "23rd"
# "1124" --> "12th"
# "2000" --> "20th"

def what_century(year)
  y = (year.to_i / 100.0).ceil
  case
    when (10..20).include?(y) then x = 'th'
    when (y % 10) == 1 then x = "st"
    when (y % 10) == 2 then x = "nd"
    when (y % 10) == 3 then x = "rd"
    else x = "th"
  end
  "#{y}#{x}"
end
