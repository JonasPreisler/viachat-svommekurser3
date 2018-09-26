Rails.application.routes.draw do
  root to: 'pages#landing'
  resources :speaker_images
  resources :speakers
  resources :orders
  resources :slots
  devise_for :users
  resources :users, only: [:show], :shallow => true do
    resources :speakers
  end
  resources :businesses
  resources :leads
  root to: "leads#index"
  get '/nyeleads', to: 'leads#nyeleads'
  get '/:id/tid', to: 'leads#edit'

  namespace 'api', defaults: { format: :json } do
    resources :users
    #scope "/:id", :as => "user" do
    #  resources :speakers
    #end
    resources :leads
    resources :speakers
    get '/:messenger_user_id/tid', to: 'leads#broadcast'
    #get '/:user', to: 'speakers#show'

    namespace 'more', defaults: { format: :json } do
      resources :users
      resources :speakers
    end

    namespace 'speaker1' do
      resources :users
    end
    namespace 'speaker2' do
      resources :users
    end
    namespace 'speaker2', defaults: { format: :json } do
      resources :users
    end
    namespace 'speaker3', defaults: { format: :json } do
      resources :users
    end
    namespace 'speaker4', defaults: { format: :json } do
      resources :users
    end
    namespace 'speaker5', defaults: { format: :json } do
      resources :users
    end
    namespace 'speaker6', defaults: { format: :json } do
      resources :users
    end
    namespace 'speaker7', defaults: { format: :json } do
      resources :users
    end
    namespace 'speaker8', defaults: { format: :json } do
      resources :users
    end
    namespace 'speaker9', defaults: { format: :json } do
      resources :users
    end
    namespace 'speaker10', defaults: { format: :json } do
      resources :users
    end
    namespace 'speaker11', defaults: { format: :json } do
      resources :users
    end
    namespace 'speaker12', defaults: { format: :json } do
      resources :users
    end
    namespace 'speaker13', defaults: { format: :json } do
      resources :users
    end
    namespace 'speaker14', defaults: { format: :json } do
      resources :users
    end
    namespace 'speaker15', defaults: { format: :json } do
      resources :users
    end
    namespace 'speaker16', defaults: { format: :json } do
      resources :users
    end
    namespace 'speaker17', defaults: { format: :json } do
      resources :users
    end
    namespace 'speaker18', defaults: { format: :json } do
      resources :users
    end
    namespace 'speaker19', defaults: { format: :json } do
      resources :users
    end
    namespace 'speaker20', defaults: { format: :json } do
      resources :users
    end

  end
end
