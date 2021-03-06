NewAuthDemo::Application.routes.draw do
  resources :users, :only => [:create, :new, :show]
  resource :session, :only => [:create, :destroy, :new]
  resources :gists

  root :to => "gists#index"
end
