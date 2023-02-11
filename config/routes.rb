Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
   # READ ALL TASKS

   get 'tasks', to: 'tasks#index'
   # CREATE A TASK
   get 'tasks/new', to: 'tasks#new', as: 'new_task'
    # READ ONE TASKS
   get 'tasks/:id', to: 'tasks#show', as: 'task'
   # CREATE A TASK
   post 'tasks', to: 'tasks#create'
   # UPDATE A TASK
   get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
   patch 'tasks/:id', to: 'tasks#update'
end
