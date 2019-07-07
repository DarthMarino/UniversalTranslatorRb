# frozen_string_literal: true

# This class converts between international metric units
class UniversalTranslator
  def initialize
    @translations = {
      'km' => 1000,
      'hm' => 100,
      'dam' => 10,
      'm' => 1,
      'dm' => 0.1,
      'cm' => 0.01,
      'mm' => 0.001
    }
  end

  def get_data(input)
    lineslist = []

    return 'File is empty' if File.zero?(input)

    # Check if input is valid
    begin
      File.foreach(input) { |line| lineslist.push(line) }
    rescue StandardError
      return 'Input is invalid'
    end

    values = []
    froms = []
    tos = []
    i = 0

    loop do
      i += 1

      break if i == lineslist.length

      # Check if there is missing data
      tmp = lineslist[i].split(' ')
      return 'There is missing data' if tmp.length != 3

      # Check if value is valid
      if tmp[0].to_i.zero?
        return 'Your value is not valid or is 0'
      else
        values << tmp[0].to_f
      end

      # Check if initial metric unit is valid
      if @translations.key?(tmp[1])
        froms << @translations[tmp[1]].to_f
      else
        return 'There is an error in a initial metric unit'
      end

      # Check if destiny metric unit is valid
      if @translations.key?(tmp[2])
        tos << @translations[tmp[2]].to_f
      else
        return 'There is an error in a destiny metric unit'
      end
    end
    calculate_and_print(values, froms, tos)
    'Succesfully Made Output'
  end

  def calculate_and_print(value, from, to)
    outputs = []
    i = 0
    loop do
      break if i == value.length

      tmp_from = from[i]
      tmp_to = to[i]

      if value[i] < 1
        tbt = value[i] / tmp_from
        tbt *= tmp_to
      else
        tbt = value[i] * tmp_from
        tbt /= tmp_to
      end
      outputs << tbt
      i += 1
    end
    file = File.open('output.txt', 'w')
    file.puts 'Value Desde Hasta Output'
    i = 0
    loop do
      break if i == value.length

      tmp_string = (value[i].to_s + ' ' + @translations.key(from[i]).to_s + ' ' +  @translations.key(to[i]).to_s + ' ' + outputs[i].to_s)
      file.puts tmp_string
      i += 1
    end
    file.close
  end
end
