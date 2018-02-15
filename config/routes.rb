Rails.application.routes.draw do
  resources :players do
    get :join_team, on: :member
  end

  resources :teams
  resources :divisions, only: [:index, :show]

  # get "players/:id/join_team", to: "players#join_team", as: :join_team

  # PATCH  /players/:id(.:format)           players#update

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
