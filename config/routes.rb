Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "invoices#index"
  get "invoices" => "invoices#index"
  get "invoices/:id" => "invoices#show", as: "invoice"
end
