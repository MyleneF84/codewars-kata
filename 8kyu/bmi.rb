# DESCRIPTION:
# Write function bmi that calculates body mass index (bmi = weight / height2).

# if bmi <= 18.5 return "Underweight"

# if bmi <= 25.0 return "Normal"

# if bmi <= 30.0 return "Overweight"

# if bmi > 30 return "Obese"

def bmi(weight, height)
  r = weight / height ** 2
  case
    when r <= 18.5; "Underweight"
    when r <= 25.0; "Normal"
    when r <= 30; "Overweight"
    when r > 30; "Obese"
  end
end
