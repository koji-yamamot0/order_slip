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
  resources :menus, only: [:index, :new, :create, :show] do
    member do
      resources :carts, only: [:show]
      post "add_menu", to: "carts#add_menu"
    end
  end
end
