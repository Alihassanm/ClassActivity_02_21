Rails.application.routes.draw do
  resources :pricing_forms
  resources :vendors
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
