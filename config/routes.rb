Rails.application.routes.draw do
# resources :tasks

get "tasks", to: "tasks#index"

#create
get "tasks/new", to: "tasks#new"
post "tasks", to: "tasks#create"

#update
get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
patch "tasks/:id", to: "tasks#update"

# read one especific
get "tasks/:id", to: "tasks#show", as: :task

#delete
delete "tasks/:id", to: "tasks#destroy", as: :destroy
end
