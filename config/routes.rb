resources :agreements, only: [] do
  collection do
    get :accept
    get :reject
  end
end
