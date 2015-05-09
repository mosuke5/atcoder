# http://abc022.contest.atcoder.jp/tasks/abc022_a

#
## 標準入力受け取り
## n: 日数
## min: 理想体重の最低値
## max: 理想体重の最大値
## weight: 初期の体重
## change: 体重の変動値 ex) [10,20,-10,5]
#
n,min,max=gets.chomp.split(" ").map(&:to_i)
weight = gets.to_i
change  = []
(n-1).times do 
  change.push(gets.to_i)
end

#
## 理想体重計算
#
tmp_weight = weight
result = 0
change.each do |a|
  tmp_weight += a
  result+=1 if tmp_weight >= min && tmp_weight <= max
end

puts result
