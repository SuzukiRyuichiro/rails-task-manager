Rails.application.routes.draw do
  # verb '/path', to: 'controller#action', as: :prefix

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # to index all the tasks (read all)
  get 'tasks', to: "tasks#index", as: :tasks
  get 'tasks/:id', to: 'tasks#show', as: :task
end
