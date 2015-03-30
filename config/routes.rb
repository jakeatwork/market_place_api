require 'api_constraints'

MarketPlaceApi::Application.routes.draw do
  mount SabisuRails::Engine => "/sabisu_rails"

  # mount ApiTaster::Engine => "/api_taster" if Rails.env.development?

  # ApiTaster.routes do

  #   get '/users/sign_in', {}

  #   post '/users/sign_in', {}

  #   delete '/users/sign_out', {}

  #   post '/users/password', {}

  #   get '/users/password/new', {}

  #   get '/users/password/edit', {}

  #   patch '/users/password', {}

  #   put '/users/password', {}

  #   get '/users/cancel', {}

  #   post '/users', {}

  #   get '/users/sign_up', {}

  #   get '/users/edit', {}

  #   patch '/users', {}

  #   put '/users', {}

  #   delete '/users', {}

  #   post '/users', {}

  #   get '/users/:id', {}

  #   patch '/users/:id', {}

  #   put '/users/:id', {}

  #   delete '/users/:id', {}

  # end

  devise_for :users
  # Api definition
  namespace :api, defaults: { format: :json },
                              constraints: { subdomain: 'api' }, path: '/'  do
    scope module: :v1,
              constraints: ApiConstraints.new(version: 1, default: true) do
      # We are going to list our resources here
      resources :users, :only => [:show, :create, :update, :destroy]
    end
  end

end