Rails.application.routes.draw do
  resources :departamentos

    resources :produtos, only: [:new, :create, :destroy]
    root "produtos#index"
    get "/produtos/busca" => "produtos#busca", as: :busca_produto
end
