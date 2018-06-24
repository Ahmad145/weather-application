Rails.application.routes.draw do
  get 'home/index'
  post '/get_weather' => 'home#get_weather'

  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
