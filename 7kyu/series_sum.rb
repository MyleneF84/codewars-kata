# DESCRIPTION:
# Task:
# Your task is to write a function which returns the sum of following series upto nth term(parameter).

# Series: 1 + 1/4 + 1/7 + 1/10 + 1/13 + 1/16 +...
# Rules:
# You need to round the answer to 2 decimal places and return it as String.

# If the given value is 0 then it should return 0.00

# You will only be given Natural Numbers as arguments.

# Examples:(Input --> Output)
# 1 --> 1 --> "1.00"
# 2 --> 1 + 1/4 --> "1.25"
# 5 --> 1 + 1/4 + 1/7 + 1/10 + 1/13 --> "1.57"

def series_sum(n)
  '%.2f' % (0...n).sum { |i| 1.0/(i * 3 + 1) }
end
        # OR
#   res = []
#     i = 0
#    n.times do
#     a = 1/(1.00+i).to_f
#     i += 3
#     res << a
#     end
#    if n == 1
#      res.sum.to_s.tr('[]','') + '0'
#    elsif res.sum.round(2).to_s.size == 3
#      res.sum.round(2).to_s + '0'
#    elsif res.sum.round(2).to_s == '0'
#      '0.00'
#    else
#      res.sum.round(2).to_s
#    end
