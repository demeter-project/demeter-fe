require 'rails_helper'

RSpec.describe Garden do
  before :each do
    data = {
      id: "1",
      attributes: {
        name: "Big Garden",
        zip_code: "05408",
        state_code: "VT",
        user_id: 1,
        weather_forecast: [
          {
            period: "2022-11-17T03:00:00.000Z",
            temp: 32.56,
            weather: "Few Clouds",
            icon_path: "http://openweathermap.org/img/wn/02n.png"
          },
          {
            period: "2022-11-17T09:00:00.000Z",
            temp: 30.7,
            weather: "Overcast Clouds",
            icon_path: "http://openweathermap.org/img/wn/04n.png"
          }
        ]
      }
    }
    @garden = Garden.new(data)

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