crumb :root do
  link "トップページ", root_path ,class: "breadcrumbs-list"
end

crumb :mypages do
  link "マイページ", mypages_index_path
  parent :root
end
