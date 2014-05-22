Rails.application.routes.draw do
 root "welcome#index"
 resources :notes
 resources :projects
 resources :gem_comments
end
