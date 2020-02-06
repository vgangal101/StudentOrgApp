
# modified routing for the seetings and calendar pages -- done by Vardaan Gangal 
Rails.application.routes.draw do
  # root 'static_pages#login'
  # get 'welcome/index'
  # get 'welcome/signup'
  # get 'static_pages/index'
  # get 'meetings/index'
  root to: 'welcome#index'
  get 'welcome/index'
  devise_scope :students do
    devise_for :students
    get 'students/sign_out' => 'devise/sessions#destroy'
    get 'session/new'
    get 'session/create'
    get 'session/login'
    get 'session/welcome'
    get 'student/new'
    get 'student/create'
    resources :attendances
    resources :meetings
    resources :students
  end
  	

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'meetings/show/:id', to: 'meetings#show'
  post 'meetings/feedback/:id', to: 'meetings#feedback'
  # Post for meeting rating/rsvp
  post 'attendances/rate'
  post 'attendances/rsvp'

  # Get for the calendar view
  get 'calendar/index', to: 'calendar#index'


  # routing for the  settings view, the initial landing and the update function 
  get 'settings/index'
  post 'settings/update', to: 'settings#update'




end
