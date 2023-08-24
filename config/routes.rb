Rails.application.routes.draw do

  resources :meetings
  resources :users, only: [:update]
  devise_for :users, controllers: { create: "users/registrations"}
  devise_for :organizations, controllers: { create: "users/registrations"}

  root 'main#home'
  # get 'user_calendar', to: 'main#home', as: 'user_calendar'
  get 'user_calendar', to: 'users#user_calendar'
  get 'organization_calendar', to: 'users#organization_calendar'
  get 'add_organization', to: 'users#add_organization'
  get 'ms_calendar', to: 'users#ms_calendar'
  get 'ms_calendar_data', to: 'users#ms_calendar_data'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
