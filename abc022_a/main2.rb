# http://abc022.contest.atcoder.jp/tasks/abc022_a
class Question

  def initialize
    n, @min, @max = gets.chomp.split(" ").map(&:to_i)
    @initial_weight = gets.to_i
    @change = []
    (n-1).times do 
      @change.push(gets.to_i)
    end
  end

  def calculate_ideal_weight
    result = 0
    result += 1 if is_ideal? @initial_weight
    tmp_weight = @initial_weight
    @change.each do |a|
      tmp_weight += a
      result += 1 if is_ideal? tmp_weight
    end

    return result
  end

  def is_ideal? weight
    if weight >= @min && weight <= @max
      return true
    else
      return false
    end
  end

end

q = Question.new
puts q.calculate_ideal_weight
