Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/login' => 'devise/sessions#new'
    get '/logout' => 'devise/sessions#destroy'
    get '/:id/edit' => 'users#update'
  end
  resources :users, :controller => "users"
  get '/brukere', to: 'pages#brukere'
  get '/posts', to: 'pages#api_posts'
  resources :teams
  resources :sortings
  resources :events do
    resources :days, controller: 'events/days' do
      resources :programs, controller: 'events/days/programs' do
        resources :speakers
      end
    end
  end
  get 'docs', to: 'pages#docs'
  namespace 'events' do
    namespace 'days' do
      resources :programs
    end
  end
  #get '/events/:id/days/:id/programs/:id', to: 'events/days/programs#show'
  root to: 'wp_posts#wp_posts'
  get '/wp_posts', to: 'wp_posts#wp_posts'
  get '/wp_posts/new', to: 'wp_posts#new'
  get '/wp_posts/:id', to: 'wp_posts#show'
  get '/wp_posts/:id/edit', to: 'wp_posts#edit'
  resources :wp_posts do



  namespace 'api', defaults: { format: :json } do
    resources :users do
      resources :events do
      end
    end
    #scope "/:id", :as => "user" do
    #  resources :speakers
    #end
    resources :leads
    resources :programs
    resources :days
    get '/:messenger_user_id/tid', to: 'leads#broadcast'
    #get '/:user', to: 'speakers#show'
  end
end
