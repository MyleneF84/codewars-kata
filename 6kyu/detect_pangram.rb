# DESCRIPTION:
# A pangram is a sentence that contains every single letter of the alphabet at least once. For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).

# Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.

def pangram?(string)
  result = []
  ('a'..'z').to_a.each { |c| result << string.downcase.chars.include?(c) }
  return result.include?(false) ? false : true
end
