class Fixnum
  def to_roman
   # Modern Roman numerals are written by expressing 
   # each digit separately starting with the left most 
   # digit and skipping any digit with a value of zero. 

    if self >= 1000 
      ("M" * thousands(self)) + (remainder(self, 1000)).to_roman
    elsif self >= 500 && self < 1000
      hundreds(self) == 9 ? "CM" + (remainder(self, 100)).to_roman : ("D" * five_hundreds(self)) + remainder(self, 500).to_roman
    elsif self >= 100 && self < 500
      hundreds(self) == 4 ? "CD" + remainder(self, 100).to_roman : ("C" * hundreds(self)) + remainder(self,100).to_roman
    elsif self < 100 && self >= 50   
      tens(self) == 9 ? "XC" + remainder(self, 10).to_roman : ("L" * fifties(self)) + remainder(self, 50).to_roman
    elsif self < 50 && self > 10
      tens(self) == 4 ? "XL" + remainder(self, 10).to_roman : ("X" * tens(self)) + remainder(self, 10).to_roman
    elsif self < 10 && self >= 5
      if remainder(self, 5) == 4
        "IX"
      elsif remainder(self, 5) == 0
        "V"
      else
        "V" + remainder(self, 5).to_roman
      end
    elsif self == 5
      "V"
    elsif self == 4
      "IV"
    else
      "I" * self 
    end
      
  end

  def remainder(num, divisor)
    num % divisor
  end

  def thousands(num)
    num / 1000
  end

  def five_hundreds(num)
    num / 500
  end

  def hundreds(num)
    num / 100
  end

  def fifties(num)
    num / 50
  end

  def tens(num)
    num / 10
  end
end