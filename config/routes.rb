Rails.application.routes.draw do
  root to: 'pages#landing'
  resources :product_images
  resources :products
  resources :orders
  resources :slots
  devise_for :users
  resources :users, only: [:show], :shallow => true do
    resources :products
  end
  resources :businesses
  resources :leads
  root to: "leads#index"
  get '/nyeleads', to: 'leads#nyeleads'
  get '/:id/tid', to: 'leads#edit'

  namespace 'api', defaults: { format: :json } do
    resources :users
    #scope "/:id", :as => "user" do
    #  resources :products
    #end
    resources :leads
    resources :products
    get '/:messenger_user_id/tid', to: 'leads#broadcast'
    #get '/:user', to: 'products#show'

    namespace 'more', defaults: { format: :json } do
      resources :users
      resources :products
    end

  end
end
