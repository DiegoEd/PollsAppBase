Rails.application.routes.draw do
  #resources :options
  #resources :questions
  devise_for :users
  resources :polls do
  	resources :questions, only: [:create, :destroy, :edit, :update, :show] do
  		resources :options, only: [:create, :destroy, :edit, :update, :show]
  	end 
  	member do
  		get :answer
      post :save_answer
      get :show_answers
  	end
  end

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
