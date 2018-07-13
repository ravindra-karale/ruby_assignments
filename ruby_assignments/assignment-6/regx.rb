require_relative 'file_storage.rb'
require 'csv'
READ_FILE = "weather_condition.html"
WRITE_FILE = "storage.csv"

class Reg
  def initializer
    @reg_exp
    @data
  end

  def regular_expresion
    @data = FileStorage.new(READ_FILE).read
    @data =  @data.gsub(/&quot;/, '')

    head = @data.scan(%r{<th.*?>(.*?)</th>}im).flatten
    table_head = head[0..3]
    # table_def_head = head[4..6]
    # puts table_def_head
    table_def = @data.scan(%r{<td.*?>(.*?)</td>}im).flatten

    obj = FileStorage.new(WRITE_FILE)
    obj.append(table_head.to_csv)
    # obj.append(table_def_head.to_csv)
    table_def.each_slice(3).to_a.each do | arr |
      obj.append(arr.to_csv)
    end
  end
end

Reg.new.regular_expresion


 # @data = FileStorage.new(READ_FILE).read
 #    row_data = @data.scan(%r{<tr\s*.*?>(.*?)</tr>}im).flatten
 #    row_data.each do |x|
 #      arr = x.to_s.scan(%r{<th\s*.*?>(.*?)</th>}im).flatten
 #    end

  # output = []
  # table_data = parse_html(page,"table")
  # table_data.each do |table|
  #    out_row = []
  #    row_data = parse_html(table,"tr")
  #    row_data.each do |row|
  #       cell_data = parse_html(row,"td")
  #       cell_data.each do |cell|
  #          cell.gsub!(%r{<.*?>},"")
  #       end
  #       out_row << cell_data
  #    end
  #    output << out_row
  # end
