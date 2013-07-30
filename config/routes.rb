Blogger::Application.routes.draw do
  resources :articles do
  	resources :comments 
  	#resources :tags
  end

  resources :tags


  root :to => 'articles#index'
end
