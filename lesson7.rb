puts "計算を始めます"
puts "2つの値を入力して下さい"
num_a = gets.to_i
num_b = gets.to_i
puts "計算結果を出力します"
puts "a*b=#{num_a*num_b}"
puts "計算を終了します"

puts "計算を始めます"
puts "何回計算を繰り返しますか？"
loop_num = gets.to_i
for i in 1..loop_num do
  puts "#{i}回目の計算"
  puts "2つの値を入力して下さい"
  num_a = gets.to_i
  num_b = gets.to_i
  puts "a=#{num_a}"
  puts "b=#{num_b}"
  puts "計算結果を出力します"
  puts "a+b=#{num_a+num_b}"
  puts "a-b=#{num_a-num_b}"
  puts "a*b=#{num_a*num_b}"
  puts "a/b=#{num_a/num_b}"
end
puts "計算を終了します"