Hackertongue::Application.routes.draw do

  get "request/index"
  root 'hackertongue#index'

  post '/', to: 'hackertongue#create', as: 'language'
  get '/hackers', to: 'hacker#index', as: 'hackers'
  get '/3e4wsd44aa', to: 'request#index'

end
