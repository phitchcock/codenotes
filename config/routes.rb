Rails.application.routes.draw do
 root "welcome#index"
 get 'sign_up' => "welcome#sign_up"
 get 'dashboard' => "welcome#dashboard"
 resources :notes
 resources :projects
 resources :gem_comments
end
