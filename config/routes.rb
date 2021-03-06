Rails.application.routes.draw do
  
  put 'memory_cards/:id/edit' => 'memory_cards#edit'
  post 'memory_cards/:id' => 'memory_cards#update' #for the 'cancel button on memory cards'
  put 'memory_cards/:id/share' => 'memory_cards#share'
  put 'memory_cards/:id/exit' => 'memory_cards#exit'
  put 'memory_cards/:id/viewPrevious' => 'memory_cards#viewPrevious'
  put 'memory_cards/:id/hidePrevious' => 'memory_cards#hidePrevious'
  put 'memory_cards/:id/viewShareOptions' => 'memory_cards#viewShareOptions'
  put 'memory_cards/:id/hideShareOptions' => 'memory_cards#hideShareOptions'
  put 'memory_cards/:id/shareGroup' => 'memory_cards#shareGroup'
 
  
  # these routes are for showing users a login form, logging them in, and logging them out.
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  
  get 'users/new'

  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
  
  
  # match '/users/homefeed', :controller => 'users', :action => 'homefeed'
  get '/users/homefeed', :to => 'users#homefeed'
  get '/users/signup', :to => 'users#sign_up'
  get '/users/settings', :to => 'users#settings'
  # get '/users/:id/edit/:changeid', :to => 'users#edit'
  resources :users
  resources :memory_cards
  resources :groups
  get '/memory_cards/:category', :to => 'memory_cards#index'
  get '/memory_cards', :to => 'memory_cards#index'
  delete 'groups/:id/delete_member/:member', :to => 'groups#delete_member'
  put 'groups/:id/add_member', :to => 'groups#add_member'
  
  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end
  

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
