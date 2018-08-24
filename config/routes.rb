Rails.application.routes.draw do
  resources :orders
  resources :slots
  devise_for :users
  resources :businesses
  resources :leads
  root to: "leads#index"
  namespace 'api' do
    namespace 'v1' do
      resources :leads
  	end
  end
  get '/:id/tid', to: 'leads#edit'
end
