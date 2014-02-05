Hackertongue::Application.routes.draw do

  root 'hackertongue#index'

  post '/', to: 'hackertongue#create', as: 'language'
end
