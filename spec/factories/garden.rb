FactoryBot.define do
  factory :garden do
    name { Faker::Coffee.blend_name }
    zip_code {Faker::Number.number(digits: 5)}
    state_code {Faker::Address.city_abbr}
    user_id {Faker::Number.number(digits: 4)}
  end

end
