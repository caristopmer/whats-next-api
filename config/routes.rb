Rails.application.routes.draw do
  post '/emotes' => 'emotes#create'
  get "/emotes/:id" => 'emotes#show'

  post '/sms' => 'sms#receive'
end
