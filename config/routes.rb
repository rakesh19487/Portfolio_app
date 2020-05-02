Rails.application.routes.draw do

  devise_for :users, path: "", path_names: {sign_up: "register", sign_in: "login", sign_out: "logout"}
  get 'about', :to => "pages#about" 
  get 'contact', :to => "pages#contact"


  resources :blogs do 
    member do 
      get 'toggle_blog_status', to: "blogs#toggle_blog_status"
    end  
  end  

  resources :portfolios do 
    put :sort, on: :collection
  end  
  

  root "pages#home"

  match '*path', to: ->(env) { [404, {}, ['Not Found']] }, via: :all

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
