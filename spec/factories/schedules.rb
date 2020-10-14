FactoryBot.define do
  factory :schedule do
    name { "会議" }
    start_time { Time.local(2020,10,17,12,30,00) }
    end_time { Time.local(2020,10,17,14,00,00) }
    countdown_id { 3 }
    color_id { 3 }
    association :user
  end
end
