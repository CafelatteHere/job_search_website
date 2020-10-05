Rails.application.routes.draw do
  devise_for :views
  devise_for :users
  get 'vacancies/index'
  root "vacancies#index"

  resources :users
end
