Rails.application.routes.draw do

  root 'homes#index'
  
  devise_for :users, :controllers => {
    registrations: "users/registrations",
    passwords: "users/passwords",
    sessions: "users/sessions",
    confirmations: "users/confirmations"
    #omniauth_callbacks: "users/omniauth_callbacks"
  }
  
  resources :jobs do
    get '/category/:job_category_id' => "jobs#jobs_by_category", as: :jobs_by_category, on: :collection
    get '/category/:job_category_id/state/:state_id' => "jobs#jobs_by_state_category", as: :jobs_by_state_category, on: :collection
  end

  resources :announcements do
    get '/announcement_type/:announcement_type_id' => "announcements#get_annoucements", as: :announcement_type, on: :collection
  end
  resources :current_affairs, only: :index do
    collection do
      post :create_daily_update_comment
      get :get_daily_updates
      get :current_affair_quiz
    end
    get '/get_weekly_updates/:date' => "current_affairs#get_weekly_updates", as: :get_weekly_updates, on: :collection
    get '/get_monthly_updates/:year/:month' => "current_affairs#get_monthly_updates", as: :get_monthly_updates, on: :collection
  end
  
  resources :quizs do
    collection do  end
    member do
      post :quiz_result
    end
    get 'category/:category_id' => "quizs#quizs_by_category", as: :quizs_by_category, on: :collection
  end

  namespace :admin do
     resources :jobs do 
      resources :job_posts
     end
     resources :dashboards
     resources :announcements
     resources :current_affairs do
      post 'filter_current_affair', on: :collection
     end
  end
  
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
