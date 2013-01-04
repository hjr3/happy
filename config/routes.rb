Happy::Application.routes.draw do
  resources :thoughts do
      get 'random', :on => :collection
  end

  resources :cheer_up, :path => '/cheer-up'

  root :to => 'thoughts#index'

  # See how all your routes lay out with "rake routes"
end
