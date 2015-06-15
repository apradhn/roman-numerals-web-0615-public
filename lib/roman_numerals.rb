class Fixnum
  def to_roman
   # Modern Roman numerals are written by expressing 
   # each digit separately starting with the left most 
   # digit and skipping any digit with a value of zero. 

    if self >= 1000 
      remainder = self % 1000
      thousands = self / 1000
      ("M" * thousands) + remainder.to_roman
    elsif self >= 900 && self < 1000
      remainder = self % 100
      "CM" + remainder.to_roman
    elsif self >= 500 && self < 900
      remainder = self % 500
      five_hundreds = self / 500
      ("D" * five_hundreds) + remainder.to_roman
    elsif self >= 400 && self < 500
      remainder = self % 100
      "CD" + remainder.to_roman
    elsif self >= 100 && self < 400
      remainder = self % 100
      hundreds = self / 100
      ("C" * hundreds) + remainder.to_roman
    elsif self < 100 && self >= 90
      remainder = self % 10
      "XC" + remainder.to_roman
    elsif self < 90 && self >= 50
      remainder = self % 50
      fifties = self / 50
      ("L" * fifties) + remainder.to_roman
    elsif self < 50 && self >= 40
      remainder = self % 10
      "XL" + remainder.to_roman
    elsif self < 40 && self >= 10
      remainder = self % 10
      tens = self / 10
      ("X" * tens) + remainder.to_roman
    elsif self == 9
      "IX"
    elsif self < 9 && self > 5
      remainder = self % 5
      5.to_roman + ("I"*remainder ) 
    elsif self == 5
      "V"
    elsif self == 4
      "IV"
    else
      "I" * self 
    end
      
  end
end