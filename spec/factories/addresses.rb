FactoryBot.define do

  factory :address do
    postcode              {"111-1111"}
    prefecture_code       {"5"}
    address_city          {"市町村"}
    address_street        {"0123456"}  
    address_building      {"xxxビル2F"}   
    phone_number          {"00000000000"}                
  end
end