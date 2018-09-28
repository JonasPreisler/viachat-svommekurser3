Rails.application.routes.draw do
  resources :places
  resources :programs
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
    resources :programs
    get '/:messenger_user_id/tid', to: 'leads#broadcast'
    #get '/:user', to: 'speakers#show'

    namespace 'more', defaults: { format: :json } do
      resources :users
      resources :speakers
      resources :programs
    end

    namespace 'program1', defaults: { format: :json } do
      resources :users
    end
    namespace 'program2', defaults: { format: :json } do
      resources :users
    end
    namespace 'program3', defaults: { format: :json } do
      resources :users
    end
    namespace 'program4', defaults: { format: :json } do
      resources :users
    end
    namespace 'program5', defaults: { format: :json } do
      resources :users
    end
    namespace 'program6', defaults: { format: :json } do
      resources :users
    end
    namespace 'program7', defaults: { format: :json } do
      resources :users
    end
    namespace 'program8', defaults: { format: :json } do
      resources :users
    end
    namespace 'program9', defaults: { format: :json } do
      resources :users
    end
    namespace 'program10', defaults: { format: :json } do
      resources :users
    end
    namespace 'program11', defaults: { format: :json } do
      resources :users
    end
    namespace 'program12', defaults: { format: :json } do
      resources :users
    end
    namespace 'program13', defaults: { format: :json } do
      resources :users
    end
    namespace 'program14', defaults: { format: :json } do
      resources :users
    end
    namespace 'program15', defaults: { format: :json } do
      resources :users
    end
    namespace 'program16', defaults: { format: :json } do
      resources :users
    end
    namespace 'program17', defaults: { format: :json } do
      resources :users
    end
    namespace 'program18', defaults: { format: :json } do
      resources :users
    end
    namespace 'program19', defaults: { format: :json } do
      resources :users
    end
    namespace 'program20', defaults: { format: :json } do
      resources :users
    end

  end
end
