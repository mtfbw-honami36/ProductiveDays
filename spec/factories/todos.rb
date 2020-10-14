FactoryBot.define do
  factory :todo do
    name { "taro" }
    association :user
  end
end
