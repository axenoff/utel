Rails.application.routes.draw do
    
    devise_for :users
    root to: "requests#new"

    # authenticated :user do
    #   if current_user.try(:admin?)
    #   root :to => "requests#index"
    # end
    # end

    get '/' => 'requests#new'
    
    get 'about' => 'pages#about'

    get 'main' => 'pages#main'

    get 'raschet' => 'pages#raschet'

    #get 'cabinet' => 'pages#cabinet'

    get 'cabinet2' => 'pages#cabinet2'

    match '/cabinet', to: 'pages#cabinet', via: ['get', 'post']


    #get 'admin' => 'pages#admin'
    match '/admin', to: 'pages#admin', via: 'get'

    match '/contacts', to: 'pages#contacts', via: 'get'


    #get 'admin', :as => 'admin_page'


    resources :requests do
      resources :comments
    end

    resources :messages do
      resources :comments
    end

    resources :districts

    resources :clients



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
