
# 親要素

ladies = Category.create :name => 'レディース'
mens = Category.create :name => 'メンズ'
baby = Category.create :name => 'ベビー・キッズ'
interior = Category.create :name => 'インテリア・住まい・小物'
book = Category.create :name => '本・音楽・ゲーム'
toy = Category.create :name => 'おもちゃ・ホビー・グッズ'
cosme = Category.create :name => 'コスメ・香水・美容'
appliance = Category.create :name => '家電・スマホ・カメラ'
sports = Category.create :name => 'スポーツ・レジャー'
handmade = Category.create :name => 'ハンドメイド'
ticket = Category.create :name => 'チケット'
bicycle = Category.create :name => '自動車・オートバイ'
other = Category.create :name => 'その他'

# ladies 子要素
ladies_1 = ladies.children.create :name => 'トップス'
ladies_2 = ladies.children.create :name => 'ジャケット/アウター'
ladies_3 = ladies.children.create :name => 'パンツ'
ladies_4 = ladies.children.create :name => 'スカート'
ladies_5 = ladies.children.create :name => 'ワンピース'
ladies_6 = ladies.children.create :name => '靴'
ladies_7 = ladies.children.create :name => 'ルームウェア/パジャマ'
ladies_8 = ladies.children.create :name => 'レッグウェア'
ladies_9 = ladies.children.create :name => '帽子'
ladies_10 = ladies.children.create :name => 'バッグ'
ladies_11 = ladies.children.create :name => 'アクセサリー'
ladies_12 = ladies.children.create :name => 'ヘアアクセサリー'
ladies_13 = ladies.children.create :name => '小物'
ladies_14 = ladies.children.create :name => '時計'
ladies_15 = ladies.children.create :name => 'ウィッグ/エクステ'
ladies_16 = ladies.children.create :name => '浴衣/水着'
ladies_17 = ladies.children.create :name => 'スーツ/フォーマル/ドレス'
ladies_18 = ladies.children.create :name => 'マタニティ'
ladies_19 = ladies.children.create :name => 'その他'

# ladies 孫要素
ladies_1.children.create [{:name=>"Tシャツ/カットソー（半袖/袖なし）"},{:name=>"Tシャツ/カットソー（七分/長袖）"},{:name=>"シャツ/ブラウス（半袖/袖なし）"},{:name=>"シャツ/ブラウス（半袖/長袖）"},{:name=>"ポロシャツ"},{:name=>"キャミソール"},{:name=>"タンクトップ"},{:name=>"ホルターネック"},{:name=>"ニット/セーター"},{:name=>"チュニック"},{:name=>"カーディガン/ボレロ"},{:name=>"アンサンブル"},{:name=>"ベスト/ジレ"},{:name=>"パーカー"},{:name=>"トレーナー/スウェット"},{:name=>"ベアトップ/チューブトップ"},{:name=>"ジャージ"},{:name=>"その他"}]
ladies_2.children.create [{:name=>"テーラードジャケット）"},{:name=>"ノーカラージャケット）"},{:name=>"Gジャン/デニムジャケット）"},{:name=>"レザージャケット"},{:name=>"ダウンジャケット"},{:name=>"ライダースジャケット"},{:name=>"ミリタリージャケット"},{:name=>"ダウンベスト"},{:name=>"ジャンパー/ブルゾン"},{:name=>"ポンチョ"},{:name=>"ロングコート"},{:name=>"トレンチコート"},{:name=>"ダッフルコート"},{:name=>"ピーコート"},{:name=>"チェスターコート"},{:name=>"モッズコート"},{:name=>"スタジャン"},{:name=>"毛皮/ファーコート"},{:name=>"スプリングコート"},{:name=>"スカジャン"},{:name=>"その他"}]
ladies_3.children.create [{:name=>"デニム/ジーンズ"},{:name=>"ショートパンツ"},{:name=>"カジュアルパンツ"},{:name=>"ハーフパンツ"},{:name=>"チノパン"},{:name=>"ワークパンツ/カーゴパンツ"},{:name=>"クロップドパンツ"},{:name=>"サロペット/オーバーオール"},{:name=>"オールインワン"},{:name=>"サルエルパンツ"},{:name=>"ガウチョパンツ"},{:name=>"その他"}]
ladies_4.children.create [{:name=>"ミニスカート"},{:name=>"ひざ丈スカート"},{:name=>"ロングスカート"},{:name=>"キュロット"},{:name=>"その他"}]
ladies_5.children.create [{:name=>"ミニワンピース"},{:name=>"ひざ丈ワンピース"},{:name=>"ロングワンピース"},{:name=>"その他"}]
ladies_6.children.create [{:name=>"ハイヒール/パンプス"},{:name=>"ブーツ"},{:name=>"サンダル"},{:name=>"スニーカー"},{:name=>"ミュール"},{:name=>"モカシン"},{:name=>"ローファー/革靴"},{:name=>"フラットシューズ/バレエシューズ"},{:name=>"長靴/レインシューズ"},{:name=>"その他"}]
ladies_7.children.create [{:name=>"パジャマ"},{:name=>"ルームウェア"}]
ladies_8.children.create [{:name=>"ソックス"},{:name=>"スパッツ/レギンス"},{:name=>"ストッキング/タイツ"},{:name=>"レッグウォーマー"},{:name=>"その他"}]
ladies_9.children.create [{:name=>"ニットキャップ/ビーニー"},{:name=>"ハット"},{:name=>"ハンチング/ベレー帽"},{:name=>"キャップ"},{:name=>"キャスケット"},{:name=>"麦わら帽子"},{:name=>"その他"}]
ladies_10.children.create [{:name=>"ハンドバッグ"},{:name=>"トートバッグ"},{:name=>"エコバッグ"},{:name=>"リュック/バックパック"},{:name=>"ボストンバッグ"},{:name=>"スポーツバッグ"},{:name=>"ショルダーバッグ"},{:name=>"クラッチバッグ"},{:name=>"ポーチ/バニティ"},{:name=>"ボディバッグ/ウェストバッグ"},{:name=>"マザーズバッグ"},{:name=>"メッセンジャーバッグ"},{:name=>"ビジネスバッグ"},{:name=>"旅行用バッグ/キャリーバッグ"},{:name=>"ショップ袋"},{:name=>"和装用バッグ"},{:name=>"かごバッグ"},{:name=>"その他"}]
ladies_11.children.create [{:name=>"ネックレス"},{:name=>"ブレスレット"},{:name=>"バングル/リストバンド"},{:name=>"リング"},{:name=>"ピアス(片耳用)"},{:name=>"ピアス(両耳用)"},{:name=>"イヤリング"},{:name=>"アンクレット"},{:name=>"ブローチ/コサージュ"},{:name=>"チャーム"},{:name=>"その他"}]
ladies_12.children.create [{:name=>"ヘアゴム/シュシュ"},{:name=>"ヘアバンド/カチューシャ"},{:name=>"ヘアピン"},{:name=>"その他"}]
ladies_13.children.create [{:name=>"すべて"}, {:name=>"長財布"},{:name=>"折り財布"},{:name=>"コインケース/小銭入れ"},{:name=>"名刺入れ/定期入れ"},{:name=>"キーケース"},{:name=>"キーホルダー"},{:name=>"手袋/アームカバー"},{:name=>"ハンカチ"},{:name=>"ベルト"},{:name=>"マフラー/ショール"},{:name=>"ストール/スヌード"},{:name=>"バンダナ/スカーフ"},{:name=>"ネックウォーマー"},{:name=>"サスペンダー"},{:name=>"サングラス/メガネ"},{:name=>"モバイルケース/カバー"},{:name=>"手帳"},{:name=>"イヤマフラー"},{:name=>"傘"},{:name=>"レインコート/ポンチョ"},{:name=>"ミラー"},{:name=>"タバコグッズ"},{:name=>"その他"}]
ladies_14.children.create [{:name=>"腕時計(アナログ)"},{:name=>"腕時計(デジタル)"},{:name=>"ラバーベルト"},{:name=>"レザーベルト"},{:name=>"金属ベルト"},{:name=>"その他"}]
ladies_15.children.create [{:name=>"前髪ウィッグ"},{:name=>"ロングストレート"},{:name=>"ロングカール"},{:name=>"ショートストレート"},{:name=>"ショートカール"},{:name=>"その他"}]
ladies_16.children.create [{:name=>"浴衣"},{:name=>"着物"},{:name=>"振袖"},{:name=>"長襦袢/半襦袢"},{:name=>"水着セパレート"},{:name=>"水着ワンピース"},{:name=>"水着スポーツ用"},{:name=>"その他"}]
ladies_17.children.create [{:name=>"スカートスーツ上下"},{:name=>"パンツスーツ上下"},{:name=>"ドレス"},{:name=>"パーティーバッグ"},{:name=>"シューズ"},{:name=>"ウェディング"},{:name=>"その他"}]
ladies_18.children.create [{:name=>"トップス"},{:name=>"アウター"},{:name=>"インナー"},{:name=>"ワンピース"},{:name=>"パンツ/スパッツ"},{:name=>"スカート"},{:name=>"パジャマ"},{:name=>"授乳服"},{:name=>"その他"}]
ladies_19.children.create [{:name=>"コスプレ"},{:name=>"下着"},{:name=>"その他"}]

# mens 子要素
mens_1 = mens.children.create :name => 'トップス'
mens_2 = mens.children.create :name => 'ジャケット/アウター'
mens_3 = mens.children.create :name => 'パンツ'
mens_4 = mens.children.create :name => '靴'
mens_5 = mens.children.create :name => 'バッグ'
mens_6 = mens.children.create :name => 'スーツ'
mens_7 = mens.children.create :name => '帽子'
mens_8 = mens.children.create :name => 'アクセサリー'
mens_9 = mens.children.create :name => '小物'
mens_10 = mens.children.create :name => '時計'
mens_11 = mens.children.create :name => '水着'
mens_12 = mens.children.create :name => 'レッグウェア'
mens_13 = mens.children.create :name => 'アンダーウェア'
mens_14 = mens.children.create :name => 'その他'

# mens 孫要素
mens_1.children.create [{:name=>"Tシャツ/カットソー(半袖/袖なし)"},{:name=>"Tシャツ/カットソー(七分/長袖)"},{:name=>"シャツ"},{:name=>"ポロシャツ"},{:name=>"タンクトップ"},{:name=>"ニット/セーター"},{:name=>"パーカー"},{:name=>"カーディガン"},{:name=>"スウェット"},{:name=>"ジャージ"},{:name=>"ベスト"},{:name=>"その他"}]
mens_2.children.create [{:name=>"テーラードジャケット"},{:name=>"ノーカラージャケット"},{:name=>"Gジャン/デニムジャケット"},{:name=>"レザージャケット"},{:name=>"ダウンジャケット"},{:name=>"ライダースジャケット"},{:name=>"ミリタリージャケット"},{:name=>"ナイロンジャケット"},{:name=>"フライトジャケット"},{:name=>"ダッフルコート"},{:name=>"ピーコート"},{:name=>"ステンカラーコート"},{:name=>"トレンチコート"},{:name=>"モッズコート"},{:name=>"チェスターコート"},{:name=>"スタジャン"},{:name=>"スカジャン"},{:name=>"ブルゾン"},{:name=>"マウンテンパーカー"},{:name=>"ダウンベスト"},{:name=>"ポンチョ"},{:name=>"カバーオール"},{:name=>"その他"}]
mens_3.children.create [{:name=>"デニム/ジーンズ"},{:name=>"ワークパンツ/カーゴパンツ"},{:name=>"スラックス"},{:name=>"チノパン"},{:name=>"ショートパンツ"},{:name=>"ペインターパンツ"},{:name=>"サルエルパンツ"},{:name=>"オーバーオール"},{:name=>"その他"}]
mens_4.children.create [{:name=>"スニーカー"},{:name=>"サンダル"},{:name=>"ブーツ"},{:name=>"モカシン"},{:name=>"ドレス/ビジネス"},{:name=>"長靴/レインシューズ"},{:name=>"デッキシューズ"},{:name=>"その他"}]
mens_5.children.create [{:name=>"ショルダーバッグ"},{:name=>"トートバッグ"},{:name=>"ボストンバッグ"},{:name=>"リュック/バックパック"},{:name=>"ウエストポーチ"},{:name=>"ボディーバッグ"},{:name=>"ドラムバッグ"},{:name=>"ビジネスバッグ"},{:name=>"トラベルバッグ"},{:name=>"メッセンジャーバッグ"},{:name=>"エコバッグ"},{:name=>"その他"}]
mens_6.children.create [{:name=>"スーツジャケット"},{:name=>"スーツベスト"},{:name=>"スラックス"},{:name=>"セットアップ"},{:name=>"その他"}]
mens_7.children.create [{:name=>"キャップ"},{:name=>"ハット"},{:name=>"ニットキャップ/ビーニー"},{:name=>"ハンチング/ベレー帽"},{:name=>"キャスケット"},{:name=>"サンバイザー"},{:name=>"その他"}]
mens_8.children.create [{:name=>"ネックレス"},{:name=>"ブレスレット"},{:name=>"バングル/リストバンド"},{:name=>"リング"},{:name=>"ピアス(片耳用)"},{:name=>"ピアス(両耳用)"},{:name=>"アンクレット"},{:name=>"その他"}]
mens_9.children.create [{:name=>"長財布"},{:name=>"折り財布"},{:name=>"マネークリップ"},{:name=>"コインケース/小銭入れ"},{:name=>"名刺入れ/定期入れ"},{:name=>"キーケース"},{:name=>"キーホルダー"},{:name=>"ネクタイ"},{:name=>"手袋"},{:name=>"ハンカチ"},{:name=>"ベルト"},{:name=>"マフラー"},{:name=>"ストール"},{:name=>"バンダナ"},{:name=>"ネックウォーマー"},{:name=>"サスペンダー"},{:name=>"ウォレットチェーン"},{:name=>"サングラス/メガネ"},{:name=>"モバイルケース/カバー"},{:name=>"手帳"},{:name=>"ストラップ"},{:name=>"ネクタイピン"},{:name=>"カフリンクス"},{:name=>"イヤマフラー"},{:name=>"傘"},{:name=>"レインコート"},{:name=>"ミラー"},{:name=>"タバコグッズ"},{:name=>"その他"}]
mens_10.children.create [{:name=>"腕時計(アナログ)"},{:name=>"腕時計(デジタル)"},{:name=>"ラバーベルト"},{:name=>"レザーベルト"},{:name=>"金属ベルト"},{:name=>"その他"}]
mens_11.children.create [{:name=>"一般水着"},{:name=>"スポーツ用"},{:name=>"アクセサリー"},{:name=>"その他"}]
mens_12.children.create [{:name=>"ソックス"},{:name=>"レギンス/スパッツ"},{:name=>"レッグウォーマー"},{:name=>"その他"}]
mens_13.children.create [{:name=>"トランクス"},{:name=>"ボクサーパンツ"},{:name=>"その他"}]

# baby 子要素
baby_1 = baby.children.create :name => 'ベビー服(女の子用) ~95cm'
baby_2 = baby.children.create :name => 'ベビー服(男の子用) ~95cm'
baby_3 = baby.children.create :name => 'ベビー服(男女兼用) ~95cm'
baby_4 = baby.children.create :name => 'キッズ服(女の子用) 100cm~'
baby_5 = baby.children.create :name => 'キッズ服(男の子用) 100cm~'
baby_6 = baby.children.create :name => 'キッズ服(男女兼用) 100cm~'
baby_7 = baby.children.create :name => 'キッズ靴'
baby_8 = baby.children.create :name => '子ども用ファッション小物'
baby_9 = baby.children.create :name => 'おむつ/トイレ/バス'
baby_10 = baby.children.create :name => '外出/移動用品'
baby_11 = baby.children.create :name => '授乳/食事'
baby_12 = baby.children.create :name => 'ベビー家具/寝具/室内用品'
baby_13 = baby.children.create :name => 'おもちゃ'
baby_14 = baby.children.create :name => '行事/記念品'
baby_15 = baby.children.create :name => 'その他'

# baby 子要素
baby_1.children.create [{:name=>"トップス"},{:name=>"アウター"},{:name=>"パンツ"},{:name=>"スカート"},{:name=>"ワンピース"},{:name=>"ベビードレス"},{:name=>"おくるみ"},{:name=>"下着/肌着"},{:name=>"パジャマ"},{:name=>"ロンパース"},{:name=>"その他"}]
baby_2.children.create [{:name=>"トップス"},{:name=>"アウター"},{:name=>"パンツ"},{:name=>"おくるみ"},{:name=>"下着/肌着"},{:name=>"パジャマ"},{:name=>"ロンパース"},{:name=>"その他"}]
baby_3.children.create [{:name=>"トップス"},{:name=>"アウター"},{:name=>"パンツ"},{:name=>"おくるみ"},{:name=>"下着/肌着"},{:name=>"パジャマ"},{:name=>"ロンパース"},{:name=>"その他"}]
baby_4.children.create [{:name=>"コート"},{:name=>"ジャケット/上着"},{:name=>"トップス(Tシャツ/カットソー)"},{:name=>"トップス(トレーナー)"},{:name=>"トップス(チュニック)"},{:name=>"トップス(タンクトップ)"},{:name=>"トップス(その他)"},{:name=>"スカート"},{:name=>"パンツ"},{:name=>"ワンピース"},{:name=>"セットアップ"},{:name=>"パジャマ"},{:name=>"フォーマル/ドレス"},{:name=>"和服"},{:name=>"浴衣"},{:name=>"甚平"},{:name=>"水着"},{:name=>"その他"}]
baby_5.children.create [{:name=>"コート"},{:name=>"ジャケット/上着"},{:name=>"トップス(Tシャツ/カットソー)"},{:name=>"トップス(トレーナー)"},{:name=>"トップス(その他)"},{:name=>"パンツ"},{:name=>"セットアップ"},{:name=>"パジャマ"},{:name=>"フォーマル/ドレス"},{:name=>"和服"},{:name=>"浴衣"},{:name=>"甚平"},{:name=>"水着"},{:name=>"その他"}]
baby_6.children.create [{:name=>"コート"},{:name=>"ジャケット/上着"},{:name=>"トップス(Tシャツ/カットソー)"},{:name=>"トップス(トレーナー)"},{:name=>"トップス(その他)"},{:name=>"ボトムス"},{:name=>"パジャマ"},{:name=>"その他"}]
baby_7.children.create [{:name=>"スニーカー"},{:name=>"サンダル"},{:name=>"ブーツ"},{:name=>"長靴"},{:name=>"その他"}]
baby_8.children.create [{:name=>"靴下/スパッツ"},{:name=>"帽子"},{:name=>"エプロン"},{:name=>"サスペンダー"},{:name=>"タイツ"},{:name=>"ハンカチ"},{:name=>"バンダナ"},{:name=>"ベルト"},{:name=>"マフラー"},{:name=>"傘"},{:name=>"手袋"},{:name=>"スタイ"},{:name=>"バッグ"},{:name=>"その他"}]
baby_9.children.create [{:name=>"おむつ用品"},{:name=>"おまる/補助便座"},{:name=>"トレーニングパンツ"},{:name=>"ベビーバス"},{:name=>"お風呂用品"},{:name=>"その他"}]
baby_10.children.create [{:name=>"ベビーカー"},{:name=>"抱っこひも/スリング"},{:name=>"チャイルドシート"},{:name=>"その他"}]
baby_11.children.create [{:name=>"ミルク"},{:name=>"ベビーフード"},{:name=>"ベビー用食器"},{:name=>"その他"}]
baby_12.children.create [{:name=>"ベッド"},{:name=>"布団/毛布"},{:name=>"イス"},{:name=>"たんす"},{:name=>"その他"}]
baby_13.children.create [{:name=>"おふろのおもちゃ"},{:name=>"がらがら"},{:name=>"オルゴール"},{:name=>"ベビージム"},{:name=>"手押し車/カタカタ"},{:name=>"知育玩具"},{:name=>"その他"}]
baby_14.children.create [{:name=>"お宮参り用品"},{:name=>"お食い初め用品"},{:name=>"アルバム"},{:name=>"手形/足形"},{:name=>"その他"}]
baby_15.children.create [{:name=>"母子手帳用品"},{:name=>"その他"}]
