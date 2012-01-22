Mmtct::Application.routes.draw do
  root :to => "static#index"

  match "emails" => "emails#create", :via => :post, :as => "emails"
  match ":tin_code" => "tins#show", :as => "tin"
  match ":tin_code/holders/:id" => "holders#update", :via => :put, :as => "holder"
  match ":tin_code/holders" => "holders#create", :via => :post, :as => "holders"

end
