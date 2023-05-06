# DESCRIPTION:
# Write a function partlist that gives all the ways to divide a list (an array) of at least two elements into two non-empty parts.

# Each two non empty parts will be in a pair (or an array for languages without tuples or a structin C - C: see Examples test Cases - )
# Each part will be in a string
# Elements of a pair must be in the same order as in the original array.
# Examples of returns in different languages:
# a = ["az", "toto", "picaro", "zone", "kiwi"] -->
# [["az", "toto picaro zone kiwi"], ["az toto", "picaro zone kiwi"], ["az toto picaro", "zone kiwi"], ["az toto picaro zone", "kiwi"]]
# or
#  a = {"az", "toto", "picaro", "zone", "kiwi"} -->
# {{"az", "toto picaro zone kiwi"}, {"az toto", "picaro zone kiwi"}, {"az toto picaro", "zone kiwi"}, {"az toto picaro zone", "kiwi"}}
# or
# a = ["az", "toto", "picaro", "zone", "kiwi"] -->
# [("az", "toto picaro zone kiwi"), ("az toto", "picaro zone kiwi"), ("az toto picaro", "zone kiwi"), ("az toto picaro zone", "kiwi")]
# or
# a = [|"az", "toto", "picaro", "zone", "kiwi"|] -->
# [("az", "toto picaro zone kiwi"), ("az toto", "picaro zone kiwi"), ("az toto picaro", "zone kiwi"), ("az toto picaro zone", "kiwi")]
# or
# a = ["az", "toto", "picaro", "zone", "kiwi"] -->
# "(az, toto picaro zone kiwi)(az toto, picaro zone kiwi)(az toto picaro, zone kiwi)(az toto picaro zone, kiwi)"

def partlist(arr)
  res = []
    n = 0
    i = 1
  until res.size == arr.size - 1 do
    a = [arr[0..n].join(' '),arr[i..-1].join(' ')]
    n += 1
    i += 1
  res << a
    end
  res
end

#       OR
# def partlist(arr)
#   (1...arr.size).map { |i|
#     [arr.take(i).join(' '), arr.drop(i).join(' ')]
#   }
# end
