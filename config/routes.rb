Rails.application.routes.draw do
  root 'pages#index'
  post 'correo', to: 'correos#create'
end
