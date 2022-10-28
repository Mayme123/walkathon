Rails.application.routes.draw do

  resources :pledges
  devise_for :pledger_users, path: 'pleder_users', controllers:{
    sessions: 'pledger_users/sessions',
    registrations: 'pledger_users/registrations'
  }
  devise_for :participant_users, path: 'participant_users', controllers:{
    sessions: 'participant_users/sessions',
    registrations: 'participant_users/registrations'
  }
  resources :messages

  devise_scope :participant_user do
    authenticated :participant_user do
      namespace :participant_users do
        get 'dashboard/index', as: :authenticated_root
      end
    end
  end

  devise_scope :pledger_user do
    authenticated :pledger_user do
      namespace :pledger_users do
        get 'dashboard/index', as: :authenticated_root
      end
    end
  end
  get 'participants/index'
  # get 'dashboard.index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
