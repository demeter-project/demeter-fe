FactoryBot.define do
  factory :user do
    username { Faker::Coffee.blend_name }
    email { Faker::Internet.email }
    password { Faker::Number.number(digits: 6) }
    uid { Faker::Number.number(digits: 4) }
    provider { "google" }
  end
  
end
