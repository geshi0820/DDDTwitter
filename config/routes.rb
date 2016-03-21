Rails.application.routes.draw do
  root 'application#index'

  resources :user_accounts, except: %i(index)
  resources :timeline, only: %i(index) do
    get :reload
  end
end
