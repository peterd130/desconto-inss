Rails.application.routes.draw do
  root "proponentes#index"

  match "/calculardesconto", :to => "proponentes#calcular_desconto", via: [:post]
  resources :proponentes
end
