Rails.application.routes.draw do
  resources :properties
  resources :orders
  resources :slots
  devise_for :users
  resources :businesses
  resources :leads
  root to: "leads#index"
  namespace 'api' do
    namespace 'v1' do
      resources :leads
      get '/:messenger_user_id/tid', to: 'leads#broadcast'
  	end
  end
  get '/:id/tid', to: 'leads#edit'
end
