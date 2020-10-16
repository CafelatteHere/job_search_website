Rails.application.routes.draw do
  devise_for :users
  get 'vacancies/index'
  root "vacancies#index"
  resources :vacancies do
    collection do
      get 'search'
    end
  end
end
