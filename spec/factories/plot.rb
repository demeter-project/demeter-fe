FactoryBot.define do
  factory :plot do
    name { Faker::Coffee.intensifier }
    garden_id {Faker::Number.number(digits: 4)}
  end

end
