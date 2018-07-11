class Random
  def initialize(n = {},max = {})
    @n = 4
    @max = 13
  end

  def generate_random_number
    number = (1..@max).to_a.shuffle
    number[1..@n]
  end
end
