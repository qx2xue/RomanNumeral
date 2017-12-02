class RomanNumber_spec
  require 'spec_helper'

  describe RomanNumeral do

    context "testForSuccess" do
      it "test for success" do
        number = 10
        expected_string = "X"
        expect(RomanNumeral.new(number).toString()).to eq(expected_string)
      end
    end

    context "testForIllegalRoman" do
      it "test for illegal Roman" do
        number = "CFGF"
        expect {RomanNumeral.new(number)}.to raise_error(ArgumentError, "Illegal character in roman numeral.")
      end
    end

    context "testForIllegalInt" do
      it "test for illegal  integer" do
        number = -1
        expect {RomanNumeral.new(number)}.to raise_error(ArgumentError, "Value of RomanNumeral must be positive.")
      end
    end

    context "testForSanity" do
      it "test for sanity" do
        initialValue = "X"
        observed = RomanNumeral.new(initialValue).toInt();
        observedStr = RomanNumeral.new(observed).toString();
        expect(initialValue).to eq(observedStr)
      end
    end

    describe "#returnNullForNoReasonAtAll" do
      it "returns empty string" do
        initialValue = "xxx"
        expect(RomanNumeral.new(initialValue).returnNullForNoReasonAtAll(initialValue)).to be_nil
      end
    end

    
    
=begin  
    

    context "testForSuccessString" do
      it "test for success for string" do
        string = "MDLC"
        expected_number = 1550
        expect(RomanNumeral.new(string).toInt()).to eq(expected_number)
      end
    end

    context "testForLargeInt" do
      it "test for large integer" do
        number = 5000
        expect {RomanNumeral.new(number)}.to raise_error(ArgumentError, "Value of RomanNumeral must be 3999 or less.")
      end
    end

    context "testForEmptyString" do
      it "test for empty string" do
        string = ""
        expect {RomanNumeral.new(string)}.to raise_error(ArgumentError, "An empty string does not define a Roman numeral.")
      end
    end

    context "testForFour" do
      it "test for four" do
        string = "IV"
        expected_number = 4
        expect(RomanNumeral.new(string).toInt()).to eq(expected_number)
      end
    end

    context "testForLargeString" do
      it "test for Large string" do
        string = "MMMMMMM"
        expect {RomanNumeral.new(string)}.to raise_error(ArgumentError, "Value of RomanNumeral must be 3999 or less.")
      end
    end

=end
    
    
    
  end
end