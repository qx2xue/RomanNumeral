require "./RomanNumeral"
class Program
  def start()
    puts "Enter a regular integer between 0 and 3999: "
    a = Integer(gets.chomp)
    #a = gets.chomp
    number = 0
    number = a
   puts "Roman equivalent of " + number.to_s + " is " + RomanNumeral.new(number).toString()
   #puts "Arabic numbers of " + a + " is " + RomanNumeral.new(a).toInt().to_s
  end
end
Program.new().start()

