Vivafive::Application.routes.draw do
  root :to => 'sessions#new'
  resources :orders
  resources :users
  resources :jobs
  namespace :tags do |feeds|
    match :get_children
    match :get_title
    match :get_professional_questions
    match :get_client_questions
  end

  get "sessions/new"
  post "sessions/create"
  delete "sessions/destroy"
end
