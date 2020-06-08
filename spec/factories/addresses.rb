FactoryBot.define do

  factory :address do
    prefecture_code       {"111-1111"}
    address_city          {"名古屋市"}
    address_street        {""}  
    address_building      {""} 
    # 上記二つ途中↑
    phone_number           {"09000000000"}
  end
end