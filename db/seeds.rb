# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 親要素

ladies = Category.create :name => 'レディース'
mens = Category.create :name => 'メンズ'
baby = Category.create :name => 'ベビー・キッズ'
interior = Category.create :name => 'インテリア・住まい・小物'
# book = Category.create! :name => '本・音楽・ゲーム'
# toy = Category.create! :name => 'おもちゃ・ホビー・グッズ'
# cosme = Category.create! :name => 'コスメ・香水・美容'
# appliance = Category.create! :name => '家電・スマホ・カメラ'
# sports = Category.create! :name => 'スポーツ・レジャー'
# handmade = Category.create! :name => 'ハンドメイド'
# ticket = Category.create! :name => 'チケット'
# bicycle = Category.create! :name => '自動車・オートバイ'
# other = Category.create! :name => 'その他'

# ladies 子要素
ladies_tops = ladies.children.create :name => 'トップス'
ladies_jacket = ladies.children.create :name => 'ジャケット/アウター'
ladies_pants = ladies.children.create :name => 'パンツ'
ladies_skirt = ladies.children.create :name => 'スカート'
ladies_dress = ladies.children.create :name => 'ワンピース'
# ladies_shoes = ladies.children.create :name => '靴'
# ladies_roomwear = ladies.children.create :name => 'ルームウェア/パジャマ'
# ladies_legwear = ladies.children.create :name => 'レッグウェア'
# ladies_hat = ladies.children.create :name => '帽子'
# ladies_bag = ladies.children.create :name => 'バッグ'
# ladies_accessory = ladies.children.create :name => 'アクセサリー'
# ladies_hairaccessory = ladies.children.create :name => 'ヘアアクセサリー'
# ladies_accessories = ladies.children.create :name => '小物'
# ladies_clock = ladies.children.create :name => '時計'
# ladies_wig = ladies.children.create :name => 'ウィッグ/エクステ'
# ladies_yukata = ladies.children.create :name => '浴衣/水着'
# ladies_suit = ladies.children.create :name => 'スーツ/フォーマル/ドレス'
# ladies_maternity = ladies.children.create :name => 'マタニティ'
# ladies_other = ladies.children.create :name => 'その他'

# ladies 孫要素
ladies_tops.children.create [{:name=>"Tシャツ/カットソー（半袖/袖なし）"},{:name=>"Tシャツ/カットソー（七分/長袖）"},{:name=>"シャツ/ブラウス（半袖/袖なし）"},{:name=>"シャツ/ブラウス（半袖/長袖）"},{:name=>"ポロシャツ"},{:name=>"キャミソール"}]
ladies_jacket.children.create [{:name=>"すべて"}, {:name=>"Tシャツ/カットソー（半袖/袖なし）"},{:name=>"Tシャツ/カットソー（七分/長袖）"}]
# ladies_pants.children.create [{:name=>"すべて"}, {:name=>"Tシャツ/カットソー（半袖/袖なし）"},{:name=>"Tシャツ/カットソー（七分/長袖）"}]
# ladies_skirt.children.create [{:name=>"すべて"}, {:name=>"Tシャツ/カットソー（半袖/袖なし）"},{:name=>"Tシャツ/カットソー（七分/長袖）"}]
# ladies_dress.children.create [{:name=>"すべて"}, {:name=>"Tシャツ/カットソー（半袖/袖なし）"},{:name=>"Tシャツ/カットソー（七分/長袖）"}]
# ladies_shoes.children.create [{:name=>"すべて"}, {:name=>"Tシャツ/カットソー（半袖/袖なし）"},{:name=>"Tシャツ/カットソー（七分/長袖）"}]
# ladies_roomwear.children.create [{:name=>"すべて"}, {:name=>"Tシャツ/カットソー（半袖/袖なし）"},{:name=>"Tシャツ/カットソー（七分/長袖）"}]
# ladies_legwear.children.create [{:name=>"すべて"}, {:name=>"Tシャツ/カットソー（半袖/袖なし）"},{:name=>"Tシャツ/カットソー（七分/長袖）"}]
# ladies_hat.children.create [{:name=>"すべて"}, {:name=>"Tシャツ/カットソー（半袖/袖なし）"},{:name=>"Tシャツ/カットソー（七分/長袖）"}]
# ladies_bag.children.create [{:name=>"すべて"}, {:name=>"Tシャツ/カットソー（半袖/袖なし）"},{:name=>"Tシャツ/カットソー（七分/長袖）"}]
# ladies_accessory.children.create [{:name=>"すべて"}, {:name=>"Tシャツ/カットソー（半袖/袖なし）"},{:name=>"Tシャツ/カットソー（七分/長袖）"}]
# ladies_hairaccessory.children.create [{:name=>"すべて"}, {:name=>"Tシャツ/カットソー（半袖/袖なし）"},{:name=>"Tシャツ/カットソー（七分/長袖）"}]
# ladies_accessories.children.create [{:name=>"すべて"}, {:name=>"Tシャツ/カットソー（半袖/袖なし）"},{:name=>"Tシャツ/カットソー（七分/長袖）"}]
# ladies_clock.children.create [{:name=>"すべて"}, {:name=>"Tシャツ/カットソー（半袖/袖なし）"},{:name=>"Tシャツ/カットソー（七分/長袖）"}]
# ladies_wig.children.create [{:name=>"すべて"}, {:name=>"Tシャツ/カットソー（半袖/袖なし）"},{:name=>"Tシャツ/カットソー（七分/長袖）"}]
# ladies_yukata.children.create [{:name=>"すべて"}, {:name=>"Tシャツ/カットソー（半袖/袖なし）"},{:name=>"Tシャツ/カットソー（七分/長袖）"}]
# ladies_suit.children.create [{:name=>"すべて"}, {:name=>"Tシャツ/カットソー（半袖/袖なし）"},{:name=>"Tシャツ/カットソー（七分/長袖）"}]
# ladies_maternity.children.create [{:name=>"すべて"}, {:name=>"Tシャツ/カットソー（半袖/袖なし）"},{:name=>"Tシャツ/カットソー（七分/長袖）"}]
# ladies_other.children.create [{:name=>"すべて"}, {:name=>"Tシャツ/カットソー（半袖/袖なし）"},{:name=>"Tシャツ/カットソー（七分/長袖）"}]


mens_tops = mens.children.create :name => 'トップス'
mens_jacket = mens.children.create :name => 'ジャケット/アウター'
mens_pants = mens.children.create :name => 'パンツ'