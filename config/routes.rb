Rails.application.routes.draw do
  # verb '/path', to: 'controller#action', as: :prefix

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # to index all the tasks (read all)
  get 'tasks', to: "tasks#index", as: :tasks

  # create one task
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'

  # read one task
  get 'tasks/:id', to: 'tasks#show', as: :task

  patch 'tasks/:id', to: 'tasks#edit', as: :edit_task

  # update
  patch 'tasks/:id', to: 'tasks#check', as: :task_completed

  # delete one task
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete_task
end
