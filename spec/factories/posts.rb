FactoryBot.define do
  factory :post do
    sequence(:name, "name_1")
    description { "description" }
    association :user
  end
end
