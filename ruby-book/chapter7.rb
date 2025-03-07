# frozen_string_literal: true

# 問1: カフェで注文する「カフェラテをください」を表示するorderメソッドを定義して呼び出してください。
def order
  puts 'カフェラテをください'
end

order

# 問2: 辺の長さが3の正方形の面積を計算して戻り値とするareaメソッドを書いてください。
# メソッドを呼び出して戻り値を受け取り、その戻り値を画面に表示してください。
def area
  puts 3 * 3
end

area

# 問3: サイコロを振って出た目を戻り値とするdiceメソッドを書いてください。呼び出して戻り値を画面に表示してください。
#      1から6までの中の1つをランダムに取得するには、例えば[1, 2, 3, 4, 5, 6].sampleと書きます。
#      sampleメソッドは、戻り値として配列の要素の中からランダムに1つを返すメソッドです。
def dice
  puts [1, 2, 3, 4, 5, 6].sample
end

dice

# 問4: カフェで注文をする、「◯◯をください」を表示するorderメソッドを定義して呼び出してください。
#      引数で注文する商品をメソッド呼び出し時に渡せるようにしてください。そして、「カフェラテをください」と「モカをください」を表示してください。
def order(item)
  "#{item}をください"
end

puts order('カフェラテ')
puts order('モカ')

# 問5: 問3で作ったdiceメソッドを変更します。サイコロを振って1が出たら「もう1回」と表示し。さらにサイコロをもう一度振り直すようにしてください。
def dice
  result = [1, 2, 3, 4, 5, 6].sample
  return result unless result == 1
  puts 'もう1回'
  [1, 2, 3, 4, 5, 6].sample
end

puts dice

# 問6: 品物の値段を返すpriceメソッドを作ります。キーワード引数でitemを渡し、itemが"コーヒー"のときは300を、"カフェラテ"のときは400を戻り値として返してください。
def price(item:)
  if item == 'コーヒー'
    300
  elsif item == 'カフェラテ'
    400
  end
end

puts price(item: 'コーヒー')
puts price(item: 'カフェラテ')

# 問7: 問6に加えて、キーワード引数でsizeを渡し、sizeによって値段を上乗せしてください。sizeが"ショート"のときは+0円、
#      "トール"のときは+50円、"ベンティ"のときは+100円としてください。
def price(item:, size:)
  items = { 'コーヒー' => 300, 'カフェラテ' => 400 }
  sizes = { 'ショート' => 0, 'トール' => 50, 'ベンティ' => 100 }
  items[item] + sizes[size]
end

puts price(item: 'コーヒー', size: 'トール')
puts price(item: 'カフェラテ', size: 'ベンティ')

# 問8: 問7を変更し、sizeが渡されない時のデフォルト値として"ショート"を設定してください。
def price(item:, size: 'ショート')
  items = { 'コーヒー' => 300, 'カフェラテ' => 400 }
  sizes = { 'ショート' => 0, 'トール' => 50, 'ベンティ' => 100 }
  items[item] + sizes[size]
end

puts price(item: 'コーヒー')
puts price(item: 'カフェラテ', size: 'トール')

# 問9: 次のプログラムはエラーになります。エラーにならずに「コーヒーをください」と表示するようにプログラムを書き換えてください。
# def order
#   puts "#{drink}をください"
# end

# drink = 'コーヒー'
# order
def order(drink)
  puts "#{drink}をください"
end

drink = 'コーヒー'
order(drink)
