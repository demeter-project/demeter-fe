FactoryBot.define do
  factory :plot_plant do
    id {Faker::Number.number(digits: 4)}
   plot_id {Faker::Number.number(digits: 4)}
   plant_id {Faker::Number.number(digits: 4)}
   quantity {Faker::Number.number(digits: 2)}
   date_planted {Faker::Date.number(digits: 5)} #ADJUST DATE FORMAT
  end

end
