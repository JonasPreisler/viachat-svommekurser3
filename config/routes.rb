Rails.application.routes.draw do
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
        get 'map', 'link', 'programs', 'programs_2', 'program1', 'program2', 'program3', 'program4', 'program5', 'program6', 'program7', 'program8', 'program9', 'program10', 'program11', 'program12', 'program13', 'program14', 'program15', 'program16', 'program17', 'program18', 'program19', 'program20', controller: 'users/programs'
        resources :programs, controller: 'users/programs' do
          get 'speakers', 'speakers_2' 'speaker1', 'speaker1', 'speaker1', 'speaker1', 'speaker1', 'speaker1', 'speaker1', 'speaker1', 'speaker1', 'speaker1', 'speaker1', 'speaker1', 'speaker1', 'speaker1', 'speaker1', 'speaker1', 'speaker1', 'speaker1', 'speaker1', 'speaker1', controller: 'users/speakers'
          resources :speakers, controller: 'users/programs/speakers'
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
  end
end
