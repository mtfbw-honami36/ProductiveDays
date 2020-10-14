Rails.application.routes.draw do
  devise_for :users
  root to: 'calendars#top'
  resources :calendars, only: :index 
  resources :schedules
  resources :todos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
