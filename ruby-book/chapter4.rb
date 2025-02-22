# frozen_string_literal: true

# 問1: 要素が"コーヒー"と"カフェラテ"である配列を作って、pメソッドで表示してください。
p ['コーヒー', 'カフェラテ']

# 問2: 配列["コーヒー", "カフェラテ", "モカ"]を変数drinksに代入してください。
drinks = ['コーヒー', 'カフェラテ', 'モカ']

# 問3: 問2で書いたプログラムに追記して、"カフェラテ"を取得して表示してください。
drinks = ['コーヒー', 'カフェラテ', 'モカ']
puts drinks[1]

# 問4: 問2で書いたプログラムに追記して、先頭の要素"コーヒー"と、末尾の要素"モカ"を取得して表示してください。
drinks = ['コーヒー', 'カフェラテ', 'モカ']
puts drinks.first
puts drinks.last

# 問5: 配列["コーヒー", "カフェラテ"]の末尾に"モカ"を加えて、表示してください。
p ['コーヒー', 'カフェラテ'] << 'モカ'

# 問6: 配列[2, 3]の先頭に1を追加して、[1, 2, 3]に変えて、表示してください。
p [2, 3].unshift 1

# 問7: [1, 2]と[3, 4]をつなげた配列を作って、表示してください。
a1 = [1, 2]
a2 = [3, 4]
p a1 + a2

# 問8: 配列["ティーラテ", "カフェラテ", "抹茶ラテ"]の全要素を表示してください。
drinks = ['ティーラテ', 'カフェラテ', '抹茶ラテ']
drinks.each do |drink|
  puts drink
end

# 問9: 配列["ティーラテ", "カフェラテ", "抹茶ラテ"]の全要素で、「○○お願いします」と注文するように表示してください。
drinks = ['ティーラテ', 'カフェラテ', '抹茶ラテ']
drinks.each do |drink|
  puts "#{drink}お願いします"
end

# 問10: 配列[1, 2, 3]の総和(つまり1+2+3)を、eachメソッドを使って求めてください。総和を表す変数sumに0を代入しておいて、eachメソッドで変数sumに配列の各要素を加えていくのが1つの方法です。
total = [1, 2, 3]
sum = 0
total.each do |num|
  sum += num
end
puts sum

# 問11: 問8で書いたプログラムを書き換えて、空の配列[]に変更して実行してください。
drinks = []
drinks.each do |drink|
  puts drink
end

