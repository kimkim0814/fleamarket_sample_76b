FactoryBot.define do
  factory :item do
    name                  {"a"} 
    price                 {"100"}
    description           {"a" } 
    size                  {"1"}  
    status                {"1"}   
    cost                  {"1"} 
    days                  {"1"}
    sold_day              {"nil"}
    user
    brand
    category
  end
end
