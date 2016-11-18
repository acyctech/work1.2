Rails.application.routes.draw do

  resources :tmps
  resources :exams
  get 'welcome/index'

  root 'welcome#index'
  resources :urlfavs
  resources :todos
  resources :issues
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
