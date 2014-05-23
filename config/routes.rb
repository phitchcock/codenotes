Rails.application.routes.draw do

 get 'dashboard' => "welcome#dashboard"

 devise_for :users
 resources :notes
 resources :projects
 resources :gem_comments

 devise_scope :user do
  authenticated :user do
    root 'welcome#dashboard', as: :authenticated_root
  end

  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end
end

end
