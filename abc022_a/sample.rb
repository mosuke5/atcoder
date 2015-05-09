#
# alias for Programming Contest
#
module Input
  def geti
    gets.chomp.to_i
  end
 
  def getis
    gets.chomp.split.map(&:to_i)
  end
end
 
#
# main logic which has only one public method Solver#solve
#
class Solver
  include Input
 
  def initialize
    n, @min, @max = getis
    @days = (1..n).map { geti }
  end
 
  def solve
    tmp = 0
    arr = @days.map do |e|
      tmp += e
    end
    puts arr.count { |e| e <= @max && e >= @min }
  end
end
 
s = Solver.new
s.solve
