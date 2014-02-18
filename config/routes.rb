Bwell::Application.routes.draw do 
  
  #get "inquiries/new", via: 'get' , :as => :contact

  #get "inquiries/thank_you", via: 'post', :as => :thank_you

  resources :users
  resources :sessions
  resources :posts do
    resources :replies
  end
  
   root :to => 'home#index'
   get '/', to: 'home#index'
   get '/about', to: 'home#about'
   get '/services', to: 'home#services'
   match '/contact',  to: 'inquiries#new',    via: 'get' , :as => :contact
   match '/thank_you', to: 'inquiries#thank_you', via: 'post', :as => :thank_you
   
   get 'signup_path', to: 'users#new', as: 'signup_path'
   get 'login_path', to: 'sessions#new', as: 'login_path'
   get 'logout_path', to: 'sessions#destroy', as: 'logout_path'
   get 'root_url', to: 'home#index', as: 'root_url'
   
    get 'blog_path', to: 'posts#index', as: 'blog_path'
    get 'new_post_path', to: 'posts#new', as: 'new_post_path'
    get 'post_reply_path',  to: 'replies#new', as: 'post_reply_path'
    get 'edit_post_reply_path',  to: 'replies#new', as: 'edit_post_reply_path'

    
   
   
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
