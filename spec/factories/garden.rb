FactoryBot.define do
  factory :garden_poro do
    skip_create
    initialize_with { new(attributes) }
    id {Faker::Number.number(digits: 5)}
    name {Faker::Coffee.blend_name} 
    zip_code {Faker::Number.number(digits: 5)}
    state_code {Faker::Address.state_abbr}
    user_id {Faker::Number.number(digits: 4)}
  end

end
