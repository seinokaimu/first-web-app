Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "questions#index"
  resources :questions do #この記述でCRUDアプリケーションで使うルーティングを自動生成することができる。
    resources :answers
  end
end