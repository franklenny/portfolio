Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :projects
  resources :skills

  resources :users do
    resources :projects
    resources :skills
  end

end
