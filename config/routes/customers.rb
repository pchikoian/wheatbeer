resources :customers, except: [:show]

namespace :api do
  namespace :v1 do
    resources :customers, only: [:create]
  end
end
