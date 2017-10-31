Rails.application.routes.draw do
  get 'sessions/new'

# penser à checker rails routes
# :format permet d'exporter en json par ex
  root 'welcome#index'
  resources:gossips #permet d'avoir le CRUD entier dans les routes, l'étape suvante est de faire les views
  resources:moussaillons

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

end
