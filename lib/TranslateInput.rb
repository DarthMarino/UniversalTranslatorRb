require 'universaltranslator.rb'

puts 'Write your input path: Example--C:/code/Documents/input.txt'
input = gets
puts UniversalTranslator.new.get_data(input.chomp)
gets
