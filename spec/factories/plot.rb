FactoryBot.define do
  factory :plot_poro do
    name { Faker::Coffee.intensifier }
    garden_id {Faker::Number.number(digits: 4)}
  end

end
