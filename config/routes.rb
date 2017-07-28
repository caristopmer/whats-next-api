Rails.application.routes.draw do
  get '/test' => 'tests#test'
  post '/test' => 'tests#posty'
end
