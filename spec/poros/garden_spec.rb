require 'rails_helper'

RSpec.describe Garden do
  before :each do
    @garden = Garden.new(
    {:id=>"1",
      :type=>"garden",
      :attributes=>
       {:name=>"Big Garden",
        :zip_code=>"05408",
        :state_code=>"VT",
        :user_id=>1,
        :weather_forecast=>
         [{:id=>1,
           :day=>"This Afternoon",
           :start_time=>"2022-11-04T15:00:00-04:00",
           :end_time=>"2022-11-04T18:00:00-04:00",
           :day_time=>true,
           :temperature=>68,
           :temperature_unit=>"F",
           :temperature_trend=>nil,
           :wind_speed=>"15 mph",
           :wind_direction=>"S",
           :icon=>"https://api.weather.gov/icons/land/day/sct?size=medium",
           :short_forecast=>"Mostly Sunny",
           :detailed_forecast=>"Mostly sunny, with a high near 68. South wind around 15 mph."},
          {:id=>2,
           :day=>"Tonight",
           :start_time=>"2022-11-04T18:00:00-04:00",
           :end_time=>"2022-11-05T06:00:00-04:00",
           :day_time=>false,
           :temperature=>58,
           :temperature_unit=>"F",
           :temperature_trend=>nil,
           :wind_speed=>"16 mph",
           :wind_direction=>"S",
           :icon=>"https://api.weather.gov/icons/land/night/sct?size=medium",
           :short_forecast=>"Partly Cloudy",
           :detailed_forecast=>"Partly cloudy, with a low around 58. South wind around 16 mph."}]}})
  end

  it 'exists' do
    expect(@garden).to be_a(Garden)
  end

  it 'has an id' do
    expect(@garden.id).to eq("1")
  end

  it 'has attributes' do
    expect(@garden.name).to eq("Big Garden")
    expect(@garden.zip_code).to eq("05408")
    expect(@garden.state_code).to eq("VT")
    expect(@garden.user_id).to eq(1)
  end

  it 'has a weather forecast' do
    expect(@garden.weather_forecast.first).to be_a(Weather)
  end
end