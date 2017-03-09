Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

   # User section routes
  namespace :admin do
    #resources :admin_users, only: [:new, :create, :show]
    resources :sessions, only: [:create]
    resources :dashboard

  end
  get "admin" => "admin/sessions#new"
end
