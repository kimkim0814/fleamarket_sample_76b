crumb :root do
  link "トップページ", root_path ,class: "breadcrumbs-list"
end

crumb :mypages do
  link "マイページ", mypages_index_path
  parent :root
end

crumb :logout do 
  link "ログアウト", mypages_logout_path
  parent :mypages
end

crumb :card do 
  link "支払方法",  mypages_card_path
  parent :mypages
end

crumb :categories do 
  link "カテゴリー一覧",  categories_path
  parent :root
end

crumb :categories_show do 
  link "#{@category.name}" ,"/categories/#{@category.id}"
  parent :categories
end

# crumb :card do 
#   link "クレジットカード情報入力", mypage_credit_register_path 
#   parent :credit_enter
# end