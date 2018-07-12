class FileStorage
  attr_accessor :filename

  def initialize(filename )
    @filename = filename
    @all_lines_arr = {}
  end

  # write a line
  def append(line)
    File.open("#{filename}", "a+") { |file| file.puts line }
  end

  def read_line
    File.readlines(open("#{filename}", "r")).each do | line |
      line_arr = line.split("|")
      @all_lines_arr[line_arr[0]] = line_arr[1..-2]+line_arr[-1].split("\n")
    end
    @all_lines_arr
  end
end