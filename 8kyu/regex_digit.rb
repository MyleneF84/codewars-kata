# DESCRIPTION:
# Implement String#digit? (in Java StringUtils.isDigit(String)), which should return true if given object is a digit (0-9), false otherwise.

class String
  def digit?
    self.empty? ? false : self.size != 1 ? false : self.gsub(/\d/, "") == "" ? true : false
  end
end
