# DESCRIPTION:
# Implement the function unique_in_order which takes as argument a sequence and returns a list of items without any elements with the same value next to each other and preserving the original order of elements.

# For example:

# unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
# unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
# unique_in_order([1,2,2,3,3])       == [1,2,3]

def unique_in_order(iterable)
  case
    when iterable.class == String
      iterable.each_char.chunk_while(&:==).map(&:join).map { |i| i[0] }
    when iterable.class == Array && iterable[0].class == String || iterable.empty?
      iterable.join.each_char.chunk_while(&:==).map(&:join).map { |i| i[0] }
    when iterable.class == Array && iterable[0].class == Integer
      iterable.join.each_char.chunk_while(&:==).map(&:join).map { |i| i[0].to_i }
    end
end

# def unique_in_order(iterable)
#   (iterable.is_a?(String) ? iterable.chars : iterable).chunk { |x| x }.map(&:first)
# end
