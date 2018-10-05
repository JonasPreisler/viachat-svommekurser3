Rails.application.routes.draw do
  resources :events do
    resources :days, controller: 'events/days' do
      resources :programs, controller: 'events/days/programs' do
        resources :speakers
      end
    end
  end
  namespace 'events' do
    namespace 'days' do
      resources :programs
    end
  end
  #get '/events/:id/days/:id/programs/:id', to: 'events/days/programs#show'
  resources :places
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
    resources :users do
      resources :events do
        get 'day1', 'day2', 'day3', 'day4', 'day5', controller: 'users/programs'
        get 'programs', 'programs_2', 'program1', 'program2', 'program3', 'program4', 'program5', 'program6', 'program7', 'program8', 'program9', 'program10', 'program11', 'program12', 'program13', 'program14', 'program15', 'program16', 'program17', 'program18', 'program19', 'program20', controller: 'users/programs'
        resources :speakers, controller: 'users/speakers'
        resources :programs, controller: 'users/days' do
          get 'speaker1', controller: 'users/speakers'
        end
      end
    end
    #scope "/:id", :as => "user" do
    #  resources :speakers
    #end
    resources :leads
    resources :speakers
    resources :programs
    resources :days
    namespace 'speakers' do
      resources :users
      resources :speakers
    end
    get '/:messenger_user_id/tid', to: 'leads#broadcast'
    #get '/:user', to: 'speakers#show'

    namespace 'more', defaults: { format: :json } do
      resources :users
      resources :programs
    end
    namespace 'morespeakers', defaults: { format: :json } do
      resources :users
      resources :speakers
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


    namespace 'speaker1', defaults: { format: :json } do
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
