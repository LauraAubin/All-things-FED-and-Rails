Rails.application.routes.draw do
  resources :people

  get 'welcome' => 'welcome#index'

  get 'welcome' => 'entries#log_in'
  post 'welcome' => 'entries#log_in'

  root to: "welcome#index"
end
