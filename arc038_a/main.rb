#
## 標準入力受け取り
#
n = gets.to_i
card = gets.chomp.split(" ")

if n != card.length
  puts "入力が正しくありません。"
  exit
end

#
## スコア計算
#
i = 0
score = 0
card = card.sort
n.times do
  score += card[i].to_i if i.even?
  i+=1
end

puts score
