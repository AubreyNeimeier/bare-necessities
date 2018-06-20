Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  resources :tasks

  resources :events do 
    resources :tasks, only: [:show, :edit]
  end

  get '/signup' =>'users#new'
  post '/signup' => 'sessions#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get  '/logout' => 'sessions#destroy'

 

end
