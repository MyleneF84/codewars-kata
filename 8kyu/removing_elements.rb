# DESCRIPTION:
# Take an array and remove every second element from the array. Always keep the first element and start removing with the next element.

# Example:
# ["Keep", "Remove", "Keep", "Remove", "Keep", ...] --> ["Keep", "Keep", "Keep", ...]

# None of the arrays will be empty, so you don't have to worry about that!

def remove_every_other(arr)
  res = arr.map.with_index { |el, i| el if i.even? }
  res.delete(nil)
  res
end
