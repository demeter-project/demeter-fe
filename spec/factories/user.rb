FactoryBot.define do
  factory :user do
    username { Faker::Coffee.blend_name }
    email { Faker::Internet.email }
    uid { Faker::Number.number(digits: 10) }
    provider { "google_oauth2" }
  end
  
end
