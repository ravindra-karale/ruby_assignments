require_relative 'file_storage'
# require_relative 'create_method'
require 'csv'
FILENAME = "location"
class ConsoleInput
  # def initialize
  # end


  csv = CSV::parse(File.open("#{FILENAME}.csv", 'r') {|f| f.read })
  headers = csv.shift
  headers_data = csv.collect { |record| Hash[*headers.zip(record).flatten ] }

  class_name = FILENAME.capitalize
  attrs = headers.map { |x| x.to_sym }

  puts headers
  puts headers_data
  klass = Object.const_set class_name, Struct.new(*attrs)
  obj = klass.new

  attr_accessor :headers

  # def gen_getters_and_setters(*names)
  #   names.each do |name|
  #     define_method name.to_s do
  #       return class_eval("@#{name}".to_sym)
  #     end
  #     define_method "#{name}=" do |val|
  #       class_eval("@#{name}".to_sym, val)
  #     end
  #   end
  # end


end