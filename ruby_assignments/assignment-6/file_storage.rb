class FileStorage
  attr_accessor :filename

  def initialize(filename )
    @filename = filename
  end

  # write a line
  def append(line)
    File.open("#{filename}", "a+") { |file| file << line }
  end

  def read
    file = File.open(@filename, 'r')
    file.read
  end
end