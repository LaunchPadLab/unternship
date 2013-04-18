Unternship::Application.routes.draw do

  resources :applicants

  resources :tasks
  
  root :to => 'pages#home'
  
  get '/admin' => 'pages#admin'

end
