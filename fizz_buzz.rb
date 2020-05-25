def fizz_buzz(num)
  if num % 15 == 0
    return 'FizzBuzz'
  elsif num % 3 == 0
    return 'Fizz'
  elsif num % 5 == 0
    return 'Buzz'
  else
    return num
  end
end

puts "1以上の数字を入力してください"
input = gets.to_i
puts "結果は、、、"
puts fizz_buzz(input)