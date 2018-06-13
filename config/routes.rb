Rails.application.routes.draw do
  resources :goals
  resources :pillars
  resources :projects
  resources :testprojects
  devise_for :users
  get 'pages/home'
  get 'pages/projects'
 root 'pages#home'
  resources :tasks

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
