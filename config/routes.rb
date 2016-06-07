Rails.application.routes.draw do

  resources :varients


  # get 'varients/index'
  #
  # get 'varients/show'
  #
  # get 'varients/new'
  #
  # get 'varients/create'
  #
  # get 'varients/edit'
  #
  # get 'varients/update'
  #
  # get 'varients/destroy'

  resources :styles
  # get '/styles/:id/varients/new' => 'varients#new', as: :new_varient


  root 'styles#index'

  # get '/styles' => 'styles#index'
  #
  # post '/styles' => 'styles#create'
  #
  # get '/styles/new' => 'styles#new', as: :new_style
  #
  # get '/styles/:id/edit' => 'styles#edit', as: :edit_style
  #
  # get '/styles/:id' => 'styles#show', as: :style
  #
  # patch '/styles/:id' => 'styles#update'
  #
  # delete '/styles/:id' => 'styles#destroy'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

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
