Rails.application.routes.draw do
  resources :property_images
  resources :properties
  resources :orders
  resources :slots
  devise_for :users
  resources :businesses
  resources :leads
  root to: "leads#index"

  namespace 'api' do
    scope "/:id", :as => "user" do
      resources :properties
    end
    resources :leads
    resources :properties
    scope "/users/:id", :as => "user" do
      resources :properties
    end
    get '/:messenger_user_id/tid', to: 'leads#broadcast'
    get '/:user', to: 'properties#show'
  end
  get '/:id/tid', to: 'leads#edit'
end
