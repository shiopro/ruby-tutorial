# frozen_string_literal: true

# 問1: 次のハッシュmenuから、キー :caffe_latteに対応する値を取得して表示してください。
menu = { coffee: 300, caffe_late: 400 }
puts menu[:caffe_late]

# 問2: 次のハッシュmenuから、キー"モカ"に対応する値を取得して表示してください。
menu = { "モカ" => "チョコレートシロップとミルク入り", "カフェラテ" => "ミルク入り" }
puts menu["モカ"]

# 問3: 問1のハッシュmenuへ、キーが:tea、値が300の組を追加して表示してください。
menu = { coffee: 300, caffe_late: 400 }
menu[:tea] = 300
p menu

# 問4: 問1のハッシュmenuから、キーが:coffeeの組を削除して表示してください。
menu = { coffee: 300, caffe_late: 400 }
menu.delete(:coffee)
p menu

# 問5: 問1のハッシュmenuで、キー:teaに対応する値がなければ"紅茶はありませんか？"と表示してください。
menu = { coffee: 300, caffe_late: 400 }
puts "紅茶はありませんか？" unless menu[:tea]

# 問6: 問1のハッシュmenuで、キー:caffe_latteの値が500以下であれば"カフェラテください"と表示してください。
menu = { coffee: 300, caffe_late: 400 }
puts "カフェラテください" if menu[:caffe_late] <= 500

# 問7: 文字列"caffelatte"の中で使われているアルファベットと、その回数を数えてください。ヒント: ハッシュを作って、アルファベットの各文字をキー、回数を値にセットしていきます。"caffelatte"を1文字ずつの配列に分解するにはcharsメソッドを使います。
hash = {}
hash.default = 0
array = "caffelatte".chars
array.each do |x|
  hash[x] += 1
end
p hash

# 問8: menu = {"コーヒー" => 300, "カフェラテ" => 400}の全組を、「コーヒー - 300円」の形で表示してください。
menu = { "コーヒー" => 300, "カフェラテ" => 400 }
menu.each do |key, value|
  puts "#{key} - #{value}円"
end

# 問9: 問8のプログラムを書き換えて、値が350以上のものだけ表示してください。
menu = { "コーヒー" => 300, "カフェラテ" => 400 }
menu.each do |key, value|
  if value >= 350
    puts "#{key} - #{value}円"
  end
end

# 問10: 問8のプログラムを書き換えて、menuに空ハッシュ{}を代入した状態で実行してください。
menu = {}
menu.each do |key, value|
  puts "#{key} - #{value}円"
end

# 問11: menu = {"コーヒー" => 300, "カフェラテ" => 400}から、全キーを持つ配列(["コーヒー", "カフェラテ"])を作ってください。
menu = { "コーヒー" => 300, "カフェラテ" => 400 }
p menu.keys
