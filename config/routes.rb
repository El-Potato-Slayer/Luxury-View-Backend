Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :agents, only: %i[index create destroy]
    end
  end
end
