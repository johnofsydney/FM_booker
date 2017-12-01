# == Route Map
#
#           Prefix Verb   URI Pattern                     Controller#Action
#             root GET    /                               pages#home
# jobs_unallocated GET    /jobs/unallocated(.:format)     jobs#unallocated
#    pages_problem GET    /pages/problem(.:format)        pages#problem
#             jobs GET    /jobs(.:format)                 jobs#index
#                  POST   /jobs(.:format)                 jobs#create
#          new_job GET    /jobs/new(.:format)             jobs#new
#         edit_job GET    /jobs/:id/edit(.:format)        jobs#edit
#              job GET    /jobs/:id(.:format)             jobs#show
#                  PATCH  /jobs/:id(.:format)             jobs#update
#                  PUT    /jobs/:id(.:format)             jobs#update
#                  DELETE /jobs/:id(.:format)             jobs#destroy
#      technicians GET    /technicians(.:format)          technicians#index
#                  POST   /technicians(.:format)          technicians#create
#   new_technician GET    /technicians/new(.:format)      technicians#new
#  edit_technician GET    /technicians/:id/edit(.:format) technicians#edit
#       technician GET    /technicians/:id(.:format)      technicians#show
#                  PATCH  /technicians/:id(.:format)      technicians#update
#                  PUT    /technicians/:id(.:format)      technicians#update
#        companies GET    /companies(.:format)            companies#index
#                  POST   /companies(.:format)            companies#create
#      new_company GET    /companies/new(.:format)        companies#new
#     edit_company GET    /companies/:id/edit(.:format)   companies#edit
#          company GET    /companies/:id(.:format)        companies#show
#                  PATCH  /companies/:id(.:format)        companies#update
#                  PUT    /companies/:id(.:format)        companies#update
#                  DELETE /companies/:id(.:format)        companies#destroy
#            login GET    /login(.:format)                session#new
#                  POST   /login(.:format)                session#create
#                  DELETE /login(.:format)                session#destroy
# 

Rails.application.routes.draw do


  # get 'companies/index'
  #
  # get 'companies/new'
  #
  # get 'companies/edit'
  #
  # get 'companies/show'

  root :to => "pages#home"

  get '/jobs/unallocated' => 'jobs#unallocated'
  get '/pages/problem' => 'pages#problem'

  resources :jobs
  resources :technicians, :only => [:index, :new, :create, :edit, :update, :show]
  resources :companies


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # This session stuff is different. Start with booker and see how we go...
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
