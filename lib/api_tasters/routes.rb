# if Rails.env.development?
#   ApiTaster.routes do
#     desc 'Get a __list__ of users'
#     get '/users'

#     post '/users', {
#       :user => {
#         :name => 'Fred'
#       }
#     }

#     get '/users/:id', {
#       :id => 1
#     }

#     put '/users/:id', {
#       :id => 1, :user => {
#         :name => 'Awesome'
#       }
#     }

#     delete '/users/:id', {
#       :id => 1
#     }
#   end
# end