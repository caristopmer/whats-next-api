Rails.application.routes.draw do
  # get '/test' => 'tests#test'
  post '/emotes' => 'emotes#create'
end
