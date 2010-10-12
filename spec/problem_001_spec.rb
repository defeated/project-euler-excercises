require 'spec_helper'
require 'problem_001'

# http://projecteuler.net/index.php?section=problems&id=1
#
# If we list all the natural numbers below 10 that are multiples of 3
# or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

describe Problem001 do
  it "has a max of 1000" do
    problem = Problem001.new(1000)
    problem.max.should == 1000
  end
  
  it "has a range of 1 to 999" do
    problem = Problem001.new(1000)
    problem.range.first.should == 1
    problem.range.last.should == 999
  end
  
  it "finds multiples of 3 up to 10" do
    problem = Problem001.new(10)
    threes = problem.multiples_of(3)
    threes.should have(3).things
    threes.should include(3, 6, 9)
  end
  
  it "finds multiples of 5 up to 10" do
    problem = Problem001.new(10)
    fives = problem.multiples_of(5)
    fives.should have(1).things
    fives.should include(5)
  end
  
  it "sums the multiples of 3 and 5 up to 10" do
    problem = Problem001.new(10)
    problem.solve_for(3, 5).should == 23
  end
  
  it "solves up to 1000" do
    problem = Problem001.new(1000)
    problem.solve_for(3, 5).should == 233168
  end
end