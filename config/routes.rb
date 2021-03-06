Rails.application.routes.draw do
  resources :trackers
  resources :posts do
    resources :comments
  end
  
  get 'sessions/new'

  root 'static_pages#home'
  get 'help'    => 'static_pages#help'
  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'forums'  => 'static_pages#forums'
  get 'routines'=> 'static_pages#routines'
  get 'tracker' => 'static_pages#tracker'
  get 'calcalc' => 'static_pages#calcalc'
  get 'locations' => 'static_pages#locations'
  get 'nutritions' => 'static_pages#nutritions'
  
  get 'signup'  => 'users#new'
  
  get     'login' => 'sessions#new'
  post    'login' => 'sessions#create'
  delete  'logout' => 'sessions#destroy'
  resources :users
end
