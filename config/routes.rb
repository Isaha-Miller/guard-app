Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
  get '/login', to: 'login#home'
  get '/logout', to: 'login#logout'
  get '/classSchedule', to: 'user#summary', as: 'summary'
  get '/edit/:classSchedule', to: 'classSchedule#edit', as: 'add_course'
  get '/delete', to: 'classSchedule#edit', as: 'delete_course'
  get '/specialorders', to: 'login#home', as: 'specialOrders'
  
end
