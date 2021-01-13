Rails.application.routes.draw do
  root to: 'images#index'
  resources :images, except: [:edit, :update, :show]

  get '/new' => 'images#new'

  resource :cart, only: [:show] do
    post   :add_item
    post   :remove_item
  end

  get '/search' => 'images#search', :as => 'search_page'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'images/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: image.id)
  #   get 'images/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :images

  # Example resource route with options:
  #   resources :images do
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
  #   resources :images do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :images do
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
  #     # Directs /admin/images/* to Admin::imagesController
  #     # (app/controllers/admin/images_controller.rb)
  #     resources :images
  #   end
end
