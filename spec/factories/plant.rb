FactoryBot.define do
  factory :plant_poro do
      id {Faker::Number.number(digits: 4)}
      usda_symbol {Faker::Number.number(digits: 5)}
      common_name {Faker::Name.first_name}
      scientific_name {Faker::Name.last_name}
      states {Faker::Address.state}
      duration  {Faker::Number.number(digits: 3)}
      flower_color {Faker::Color.color_name}
      growth_rate {Faker::Verb.past}
      toxic {Faker::Boolean.boolean}
      edible {Faker::Boolean.boolean}
      temperature_min {Faker::Number.number(digits: 2)}
      frost_free_days_min {Faker::Number.number(digits: 2)}
      drought_tolerance  {Faker::Number.number(digits: 1)}
      fire_tolerance  {Faker::Number.number(digits: 1)}
      mositure_use  {Faker::Number.number(digits: 1)}
      ph_minimum {Faker::Number.decimal(l_digits: 2, r_digits: 1)}
      ph_maximum {Faker::Number.decimal(l_digits: 2, r_digits: 1)}
      precipitation_minimum {Faker::Number.number(digits: 3)}
      precipitation_maximum {Faker::Number.number(digits: 3)}
      salinity_tolerance  {Faker::Number.number(digits: 2)}
      shade_tolerance {Faker::Number.number(digits: 2)}
  end

end
