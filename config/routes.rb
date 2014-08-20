Rails.application.routes.draw do
  root to: "weather#show"
  resource :open_weather
end
