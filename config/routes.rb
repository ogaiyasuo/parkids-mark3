Rails.application.routes.draw do
  devise_for :staffs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'contents#index'

  get '/contents/index' => 'contents#index',as:'contents'
  post '/contents' => 'contents#create',as:'contents_create'
  delete '/contents/:id' => 'contents#destroy',as:'contents_destroy'
    
  get '/articles/:id/index' => 'articles#index',as:'articles'
  post '/articles/:id/create' => 'articles#create',as:'articles_create'
  get '/articles/:id/edit' => 'articles#edit',as:'articles_edit'
  get '/articles/:id/preview' => 'articles#preview',as:'articles_preview'
  
  
  delete '/articles/:id/destroy' => 'articles#destroy',as:'articles_destroy'
  patch '/articles/:id/content' => 'articles#update' ,as: 'contents_update'
  patch '/articles/:id/articles' => 'articles#article_update' ,as: 'articles_update'
  
  get '/front/index' => 'front_contents#index',as:'front'
  get '/front/:id/edit' => 'front_contents#edit',as:'front_press'
  post '/front/:id/create' => 'front_contents#create',as:'front_create'
  
#  get '/staff_lobbies' => 'staff_lobbies#index'
#  get '/staff_looms' => 'staff_looms#index'
end
