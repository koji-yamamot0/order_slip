Rails.application.routes.draw do
  devise_for :staffs, controllers: {
    sessions: 'staffs/sessions',
    passwords: 'staffs/passwords',
    registrations: 'staffs/registrations'
  }

  devise_for :customers, controllers: {
    sessions: 'customers/sessions',
    passwords: 'customers/passwords',
    registrations: 'customers/registrations'
  }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "menus#index"
  post "provide", to: "menus#provide"
  get "confirmation", to: "menus#confirmation"
  resources :menus, only: [:index, :new, :create, :show] do
    member do
      resources :carts, only: [:show] do 
        member do
          resources :orders, only: [:index, :create]
        end
      end
      post "add_menu", to: "carts#add_menu" 
    end
  end
end
