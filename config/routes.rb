Rails.application.routes.draw do
 root "welcome#index"
 get 'about' => "welcome#about"
 resources :notes
 resources :projects
 resources :gem_comments
end
