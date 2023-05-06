# DESCRIPTION:
# You probably know the "like" system from Facebook and other pages. People can "like" blog posts, pictures or other items. We want to create the text that should be displayed next to such an item.

# Implement the function which takes an array containing the names of people that like an item. It must return the display text as shown in the examples:

# []                                -->  "no one likes this"
# ["Peter"]                         -->  "Peter likes this"
# ["Jacob", "Alex"]                 -->  "Jacob and Alex like this"
# ["Max", "John", "Mark"]           -->  "Max, John and Mark like this"
# ["Alex", "Jacob", "Mark", "Max"]  -->  "Alex, Jacob and 2 others like this"
# Note: For 4 or more names, the number in "and 2 others" simply increases.

def likes(names)
  return 'no one likes this' if names.empty?
    case names.count
      when 1
        "#{names.first} likes this"
      when 2
        "#{names.first} and #{names.last} like this"
      when 3
        "#{names[0]}, #{names[1]} and #{names.last} like this"
      else
      "#{names[0]}, #{names[1]} and #{names.count - 2} others like this"
      end
end
