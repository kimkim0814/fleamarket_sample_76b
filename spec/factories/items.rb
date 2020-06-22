FactoryBot.define do
  factory :item do
    name        {"スニーカー"}
    price       {"1000"}
    description {"新品のスニーカーです"}
    category_id {1}
    size        {"S"}
    status      {1}
    cost        {"送料込み(出品者負担)"}
    area        {1}
    days        {"1~2日で発送"}
    user_id     {1}
    images {[
      FactoryBot.build(:image, product: nil)
    ]}
  end
end
