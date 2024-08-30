Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "/your_fortune", controller: "my_examples", action: "fortune"
  get "/lottery", controller: "my_examples", action: "lottery"
  get "/bottles", controller: "my_examples", action: "bottles"
  
  # Defines the root path route ("/")
  # root "posts#index"
end
