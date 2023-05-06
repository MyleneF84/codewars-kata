# DESCRIPTION:
# Hey awesome programmer!

# You've got much data to manage and of course you use zero-based and non-negative ID's to make each data item unique!

# Therefore you need a method, which returns the smallest unused ID for your next new data item...

# Note: The given array of used IDs may be unsorted. For test reasons there may be duplicate IDs, but you don't have to find or remove them!

# Go on and code some pure awesomeness!

def next_id(arr)
  return 0 if arr == []
  a=*(0..(arr.max))
  (a - arr) == [] ? arr.max.next : (a - arr).first
end

#     OR
# def next_id(arr)
#   ([*(0..arr.size)] - arr).min
# end
