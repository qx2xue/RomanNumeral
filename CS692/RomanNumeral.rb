class RomanNumeral

  @@num

  $numbers = Array[1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
  $letters = Array["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]

  def initialize(arg)
    if arg.class == String
      case_2(arg)
    elsif arg.class == Fixnum
      case_1(arg)
    end
  end

  def case_1(arabic)
    if arabic < 1
      raise ArgumentError, 'Value of RomanNumeral must be positive.'
    end
    if arabic > 3999
      raise ArgumentError, 'Value of RomanNumeral must be 3999 or less.'
    end
    @@num = arabic
  end

  def case_2(roman)
    if roman.size == 0
      raise ArgumentError, 'An empty string does not define a Roman numeral.'
    end
    roman = roman.upcase
    i = 0
    arabic = 0
    while i < roman.size
      letter = roman[i]
      number = letterToNumber(letter)

      if number < 0
        raise ArgumentError, 'Illegal character in roman numeral.'
      end

      i += 1
      if i == roman.size
        arabic += number
      else

        nextNumber = letterToNumber(roman[i])

        if nextNumber > number
          arabic += nextNumber - number
          i += 1
        else
          arabic += number
        end
      end
    end

    if arabic > 3999
      raise ArgumentError, 'Value of RomanNumeral must be 3999 or less.'
    end

    @@num = arabic
  end

  def letterToNumber(char)
    case char
    when 'I'
      return 1
    when 'V'
      return 5
    when 'X'
      return 10
    when 'L'
      return 50
    when 'C'
      return 100
    when 'D'
      return 500
    when 'M'
      return 1000
    else
      return -1
    end
  end

  def toString()
    roman = ""
    n = @@num
    for i in 0..12
      while n >= $numbers[i]
        roman += $letters[i]
        n -= $numbers[i]
      end
    end
    return roman
  end

  def toInt()
    return @@num
  end

  def returnNullForNoReasonAtAll(char)
    char = nil
    return char
  end

end