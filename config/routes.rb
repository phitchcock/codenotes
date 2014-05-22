Rails.application.routes.draw do
 root "notes#index"
 resources :notes
 resources :gem_comments
end
