Mmtct::Application.routes.draw do
  root :to => "static#index"

  match ":tin_code" => "tins#show"
  match ":tin_code/holders/:id" => "holders#update", :via => :put
  match ":tin_code/holders" => "holders#create", :via => :post
end
