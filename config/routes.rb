Rails.application.routes.draw do
  Rails.application.routes.draw do
  root 'home#index'
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  get 'auth/failure', to: redirect('/')
  resources :companies
  resources :employees
  resources :reimbursement_claims
end
end
