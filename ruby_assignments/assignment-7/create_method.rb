class CreateMethod
  attr_accessor :attr
  def initialize(attr)
    @attr = attr
  end
  @attr.each do |action|
    define_method "#{action}?" do |something|
      something
    end
  end
end