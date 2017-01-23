Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, controllers: { sessions: 'users/sessions' }

   namespace :admin do
    resources :jobs do
      member do
        post :publish
        post :hide
      end

      resources :resumes
    end
  end

  resources :welcome do
  end


  resources :jobs do
    resources :resumes
  end

  root 'welcome#index'

end
