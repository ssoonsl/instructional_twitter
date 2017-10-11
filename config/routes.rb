Rails.application.routes.draw do

  devise_for :users

  resources :tweets, only: [:index, :show] do
    resources :replies, only: [:create]
  end

  root to: 'tweets#index'

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

end
