resources :customers do
  member do
    patch 'block', on: :member, to: 'customers#block'
  end
end
