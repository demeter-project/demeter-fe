FactoryBot.define do
  factory :user do
    username { Faker::Coffee.blend_name }
    email { Faker::Coffee.blend_name"@gmail.com" }
    password { Faker::Number.number(digits: 6) }
    uid { Faker::Number.number(digits: 4) }
    provider { "google" }
  end
  
end
