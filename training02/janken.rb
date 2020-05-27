# じゃんけんをして、勝ち負けを判定させましょう。（相手の出す手は乱数で決めましょう）
#  以下は出力例です。
#  -----------------
#  最初はグー、じゃんけん...
# [0]:グー
# [1]:チョキ
# [2]:パー
# 0
# あなたの手:グー、相手の手:チョキ
# あなたの勝ちです
# -----------------
# 以下は例外を入力した時の出力例です。
# -----------------
# 最初はグー、じゃんけん...
# [0]:グー
# [1]:チョキ
# [2]:パー
# 3
# 入力された値が無効です
# 最初はグー、じゃんけん...
# [0]:グー
# [1]:チョキ
# [2]:パー
# ...

def janken(user, cp)
  hand = ['グー', 'チョキ', 'パー']
  num = (user - cp + 3) % 3
  if num == 2
    return ['あなたの勝ちです', hand[user], hand[cp]]
  elsif num == 1
    return ['あなたの負けです', hand[user], hand[cp]]
  else
    return ['あいこでした', hand[user], hand[cp]]
  end
end

def exception(val, cp)
  num = val.to_i
  if (val == '0' && num == 0) || num == 1 || num == 2
    return janken(num, cp)
  else
    puts '入力された値が無効です'
    puts '最初はグー、じゃんけん...'
    puts '[0]:グー'
    puts '[1]:チョキ'
    puts '[2]:パー'
    input = gets
    exception(input, cp)
  end
end

puts '最初はグー、じゃんけん...'
puts '[0]:グー'
puts '[1]:チョキ'
puts '[2]:パー'
input = gets.chomp
cp = rand(0..2)
result = exception(input, cp)
puts "あなたの手:#{result[1]}、相手の手:#{result[2]}"
puts result[0]

