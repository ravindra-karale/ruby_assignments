class Location
  attr_accessor :attr

  def initialize(latitude,longitude,description)
    @latitude = latitude
    @longitude = longitude
    @description = description
  end

  %w{latitude longitude description}.each do |method|
      define_method "#{method}?" do
        puts "hi"
      end
    end

end

obj = Location.new
