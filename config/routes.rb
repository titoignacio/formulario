Rails.application.routes.draw do
  get 'sales/new'
  post 'sales/create', as:'sales' ,to:'sales#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
