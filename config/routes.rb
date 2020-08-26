Rails.application.routes.draw do
  get 'dashboards/index'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :jungles do
    resources :jungleplants, only:[:new, :create] do
      resources :plants, only:[:show, :index]
    end
  end


  resources :bookings, only:[:new, :create, :show, :index, :destroy]
  resources :dashboards, only:[:index]

end
