Rails.application.routes.draw do
  # get '/test' => 'tests#test'
  post '/emotes' => 'emotes#create'
  get "/emotes/:id" => 'emotes#show'

  post '/sms' => 'sms#receive'
end
