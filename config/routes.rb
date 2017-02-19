Rails.application.routes.draw do

  root to: 'rspec#new'
  post "/scaffold", to: "rspec#scaffold", as: :scaffold

  post "/api", to: "api#produce_scaffold", as: :api

end
