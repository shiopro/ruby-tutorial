# frozen_string_literal: true

# 問1: ハッシュ{:coffee => 300, :caffe_latte => 400}のクラスを確認してください。
p ({:coffee => 300, :caffe_late => 400}).class

# 問2: Hashクラスのnewメソッドを使って、空のハッシュオブジェクトを作って表示してください。
p Hash.new

# 問3: CaffeLatteクラスを定義してください。定義したCaffeLatteクラスのオブジェクトを作ってください。作ったオブジェクトが属するクラスを調べてください。
class CaffeLatte
end
caffe_late = CaffeLatte.new
p caffe_late.class

# 問4: Itemクラスを定義してください。メソッドnameを定義して、戻り値として"チーズケーキ"を返してください。Itemクラスのオブジェクトを作って、メソッドnameを呼び出してください。
class Item
  def name
    "チーズケーキ"
  end
end
item = Item.new
puts item.name

# 問5: Itemクラスを定義してください。インスタンス変数@nameへ代入するname=メソッドをItemクラスへ定義してください。
#      定義したメソッドを使って@nameへ"チーズケーキ"を代入してください。また、インスタンス変数@nameを取得するnameメソッドを定義して、@nameを表示してください。
class Item
  def name=(text)
    @name = text
  end
  def name
    @name
  end
end
item = Item.new
item.name = 'チーズケーキ'
puts item.name

# 問6: "商品を扱うオブジェクト"と表示させるinitializeメソッドをItemクラスに定義して、呼び出してください。
class Item
  def initialize
    puts '商品を扱うオブジェクト'
  end
end
Item.new

# 問7: Itemクラスにinitializeメソッドを定義してください。引数を1つ渡し、@name変数に代入してください。
#      Itemクラスのオブジェクトを2つ作り、@name変数にそれぞれ"マフィン"、"スコーン"を代入してください。
#      また、インスタンス変数@nameを取得するnameメソッドを定義して、2つのオブジェクトの@name変数を表示してください。
class Item
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end
item1 = Item.new('マフィン')
item2 = Item.new('スコーン')
puts item1.name
puts item2.name

# 問8: Drinkクラスにクラスメソッドtodays_specialを定義して、"ホワイトモカ"を戻り値としてください。
class Drink
  def self.todays_special
    'ホワイトモカ'
  end
end
puts Drink.todays_special

# 問9: P.207のitem1.rbのItemクラスを継承したFoodクラスを作ってください。
#      Foodクラスのオブジェクトを作り、@nameに"チーズケーキ"を代入して、nameメソッドを呼び出してください。
class Menu
  def name
    @name
  end
  def name=(text)
    @name = text
  end
end

class Food < Menu
end

food = Food.new
food.name = 'チーズケーキ'
puts food.name
