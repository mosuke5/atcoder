# http://abc022.contest.atcoder.jp/tasks/abc022_a

#
## 標準入力受け取り
#
N,S,T=gets.chomp.split(" ").map(&:to_i)
W = gets.to_i
A  = []
(N-1).times do 
  A.push(gets.to_i)
end

#
## 理想体重計算
#
w = W
result = 0
A.each do |a|
  w += a
  result+=1 if w >= S && w <= T
end

puts result
