Rails.application.routes.draw do
  get '/cart', to: 'cart#index'
  get '/cart/add/:id', to:'cart#add', as: :add
  get '/cart/clear', to:'cart#clear_cart', as: :clear

  resources :brands
  root 'pages#home'

  get '/about', to: 'pages#about'

  get '/faqs', to: 'pages#faqs'

  get '/contact', to: 'pages#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
