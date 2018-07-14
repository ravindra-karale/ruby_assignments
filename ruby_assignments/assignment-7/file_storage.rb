class FileStorage
  attr_accessor :filename

  def initialize(filename )
    @filename = filename
  end

  def read
    file = FILE.open(@filename, 'r')
    file.read
  end
end

# <!-- <tr.*?>(.*?)[.*]*<\/tr> -->
