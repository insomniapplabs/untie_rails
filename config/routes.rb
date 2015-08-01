Rails.application.routes.draw do

  resources :prospects

  mount RedactorRails::Engine => '/redactor_rails'
  devise_for :users
  get 'about', to: 'pages#about'
  get 'faq', to: 'pages#faq'
  get 'bio', to: 'pages#bio'
  get 'basic-divorce', to: 'pages#basic'
  get 'divorce-with-property', to: 'pages#property'
  get 'divorce-with-children', to: 'pages#children'
  get 'dashboard', to: 'dashboard#index'
  get 'dashboard/questions'
  get 'dashboard/posts'
  get 'dashboard/posts/new', to: 'dashboard#newpost'
  get 'dashboard/questions/new', to: 'dashboard#newquestion'

  resources :questions
  resources :posts
  resources :contacts

  root to: 'pages#home'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
