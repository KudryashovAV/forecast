Rails.application.routes.draw do
  root to: "weather#show"
  post "/", to: "weather#show"
end
