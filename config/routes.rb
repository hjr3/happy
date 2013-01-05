Happy::Application.routes.draw do
    get 'signup' => 'users#new', :as => 'signup'
    get 'login' => 'sessions#new', :as => 'login'
    get 'logout' => 'sessions#destroy', :as => 'logout'

    resources :users
    resources :sessions

    resources :thoughts do
        get 'random', :on => :collection
    end

    resources :cheer_up, :path => '/cheer-up'

    root :to => 'thoughts#index'

    # See how all your routes lay out with "rake routes"
end
