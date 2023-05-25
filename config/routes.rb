Rails.application.routes.draw do
  resources :lists, only: %i[index new create show]
end
