class Problem001
  attr_reader :max, :range
  
  def initialize(max = 1000)
    @max = max
    @range = (1...max).to_a
  end
  
  def multiples_of(*numbers)
    range.select do |i|
      numbers.any? { |n| i % n == 0 }
    end
  end
  
  def solve_for(*numbers)
    matches = numbers.collect { |n| multiples_of(n) }
    matches.flatten.inject { |sum, i| sum + i }
  end
end