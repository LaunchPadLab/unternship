Unternship::Application.routes.draw do

  resources :applicants

  resources :tasks
  
  resources :assignments

  root :to => 'pages#home'
  
  get '/admin' => 'pages#admin', as: :admin
  
  post '/assignment_update' => 'assignments#assignment_update', as: :assignment_update
  
  get '/assignment_profile/:id' => 'assignments#profile', as: :assignment_profile
  
end
