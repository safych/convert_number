# frozen_string_literal: true

class ConvertService
  def initialize(str_up, str_middle, str_down, line, array)
    @str_up = str_up
    @str_middle = str_middle
    @str_down = str_down
    @line = line
    @array = array
  end

  def transform
    i = 0
    while i < @line.size do
      @str_up += ' ---  '
      @str_middle += "| #{@line[i]} |"
      @str_middle += '*' if i < @line.size - 1
      @str_down += ' ===  '
      i += 1
    end
    @array.push(@str_up, @str_middle, @str_down)
  end

  def output_convert
    @array.each { |number| puts number }
  end
end
