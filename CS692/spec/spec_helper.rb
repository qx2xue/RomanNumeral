class Spec_helper
  require 'simplecov'
  SimpleCov.start
  require_relative '../RomanNumeral'
  #require_relative '../string_ops'
  
  require 'codecov'
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
end