Rails.application.routes.draw do
  resources :contacts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :projects
  resources :skills

  resources :users do
    resources :projects
  end

  get '/login' => 'sessions#new'
  post   '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  delete '/logout' => 'sessions#destroy'
  get '/about' => 'static#about'

  root 'projects#index'

end
