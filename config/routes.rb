Rails.application.routes.draw do
  resources :projects
  devise_for :users
  get 'about', to: "static_pages#about"
  get 'contact', to:"static_pages#contact"
  get "/login" => "devise/sessions#new"
  root to: "projects#index"
end
