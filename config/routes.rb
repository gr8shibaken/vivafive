Vivafive::Application.routes.draw do
  root :to => 'sessions#new'
  resources :orders
  resources :users
  resources :jobs
  namespace :tags do |tags|
    get :get_children
    get :get_title
    get :get_professional_questions
    get :get_client_questions
  end

  get "sessions/new"
  post "sessions/create"
  delete "sessions/destroy"
end
