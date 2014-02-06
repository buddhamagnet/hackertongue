Hackertongue::Application.routes.draw do

  root 'hackertongue#index'

  post '/', to: 'hackertongue#create', as: 'language'
  get '/hackers', to: 'hacker#index', as: 'hackers'
end
