Rails.application.routes.draw do
  root to: 'calendars#index'
  resources :calendars
  resources :schedules
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
