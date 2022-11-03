FactoryBot.define do
  factory :plot_poro do
    skip_create
    initialize_with { new(attributes) }
    name { Faker::Coffee.intensifier }
    garden_id {Faker::Number.number(digits: 4)}
  end

end
