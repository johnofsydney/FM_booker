# == Route Map
#
#   Prefix Verb  URI Pattern              Controller#Action
#     root GET   /                        pages#home
#     jobs GET   /jobs(.:format)          jobs#index
#          POST  /jobs(.:format)          jobs#create
#  new_job GET   /jobs/new(.:format)      jobs#new
# edit_job GET   /jobs/:id/edit(.:format) jobs#edit
#      job PATCH /jobs/:id(.:format)      jobs#update
#          PUT   /jobs/:id(.:format)      jobs#update
#


Rails.application.routes.draw do



  # get 'session/new' - #think this is one of those things that I should have deleted.

  root :to => "pages#home"

  resources :jobs, :only => [:index, :new, :create, :edit, :update, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # This session stuff is different. Start with booker and see how we go...
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
