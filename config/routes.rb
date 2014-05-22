Rails.application.routes.draw do
 root "notes#index"
 resources :notes
 resources :projects
 resources :gem_comments
end
