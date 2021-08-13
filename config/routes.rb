Rails.application.routes.draw do

  # GET root
  root to: 'main#index', as: :root

  # GET /sign_up
  get "sign_up", to: "registrations#new", as: :registrations
  # POST /sign_up
  post "sign_up", to: "registrations#create"

  # GET /sign_in
  get "sign_in", to: "sessions#new"
  # POST /sign_in
  post "sign_in", to: "sessions#create"


  # DELETE /logout
  delete "logout", to: "sessions#destroy"

  # GET /about-us
  get 'about-us', to: 'about#index', as: :about



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
