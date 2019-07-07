require 'test-unit'
require_relative 'universaltranslator'

# TestNumberTranslator tests differents inputs a modified universal translator to instead of printing returning errors.
class TestNumberTranslator < Test::Unit::TestCase
  # Empty file
  def test_one
    input = 'input_tes1.txt'
    translate = UniversalTranslator.new
    assert_equal('File is empty', translate.get_data(input))
  end
  
  # Wrong Value
  def test_two
    input = 'input_tes2.txt'
    translate = UniversalTranslator.new
    assert_equal('Your value is not valid or is 0', translate.get_data(input))
  end

  # Non existant File
  def test_three
    input = 'invalid_input.txt'
    translate = UniversalTranslator.new
    assert_equal('Input is invalid', translate.get_data(input))
  end

  # Empty file
  def test_four
    input = 'input_tes3.txt'
    translate = UniversalTranslator.new
    assert_equal('There is missing data', translate.get_data(input))
  end

  # Wrong initial metirc unit
  def test_five
    input = 'input_tes4.txt'
    translate = UniversalTranslator.new
    assert_equal('There is an error in a initial metric unit', translate.get_data(input))
  end

  # Wrong destiny metric unit
  def test_six
    input = 'input_tes5.txt'
    translate = UniversalTranslator.new
    assert_equal('There is an error in a destiny metric unit', translate.get_data(input))
  end

  # Everything went cool
  def test_seven
    input = 'input_tes7.txt'
    translate = UniversalTranslator.new
    assert_equal('Succesfully Made Output', translate.get_data(input))
  end
end
