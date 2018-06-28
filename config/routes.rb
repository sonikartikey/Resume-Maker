Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'welcome#index'
get '/add_new/education', to: 'educations#add_more', as:'add_more'
resources :admin
resources :abouts
resources :skills
resources :educations
resources :interests
resources :experiences
resources :awards
end
