Rails.application.routes.draw do
  get 'vacancies/index'
  root "vacancies#index"
end
