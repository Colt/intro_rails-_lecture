Rails.application.routes.draw do
  get "/hello" => "people#hello"
  get "/goodbye" => "people#goodbye"
  # get "/people" => "people#index"
  # get "/people/:id" => "people#show"
  resources :people
end
