Rails.application.routes.draw do
  resources :projects
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}
  get 'about', to: "static_pages#about"
  get 'contact', to:"static_pages#contact"
  get "/login" => "devise/sessions#new"
  root to: "projects#index"
end
