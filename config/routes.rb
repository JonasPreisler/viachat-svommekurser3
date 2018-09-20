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

    namespace 'product1' do
      resources :users
    end
    namespace 'product2' do
      resources :users
    end
    namespace 'product2', defaults: { format: :json } do
      resources :users
    end
    namespace 'product3', defaults: { format: :json } do
      resources :users
    end
    namespace 'product4', defaults: { format: :json } do
      resources :users
    end
    namespace 'product5', defaults: { format: :json } do
      resources :users
    end
    namespace 'product6', defaults: { format: :json } do
      resources :users
    end
    namespace 'product7', defaults: { format: :json } do
      resources :users
    end
    namespace 'product8', defaults: { format: :json } do
      resources :users
    end
    namespace 'product9', defaults: { format: :json } do
      resources :users
    end
    namespace 'product10', defaults: { format: :json } do
      resources :users
    end
    namespace 'product11', defaults: { format: :json } do
      resources :users
    end
    namespace 'product12', defaults: { format: :json } do
      resources :users
    end
    namespace 'product13', defaults: { format: :json } do
      resources :users
    end
    namespace 'product14', defaults: { format: :json } do
      resources :users
    end
    namespace 'product15', defaults: { format: :json } do
      resources :users
    end
    namespace 'product16', defaults: { format: :json } do
      resources :users
    end
    namespace 'product17', defaults: { format: :json } do
      resources :users
    end
    namespace 'product18', defaults: { format: :json } do
      resources :users
    end
    namespace 'product19', defaults: { format: :json } do
      resources :users
    end
    namespace 'product20', defaults: { format: :json } do
      resources :users
    end

  end
end
