Rails.application.routes.draw do
  resources :birds, only: [:index, :show, :create, :update]

  # Custom route to handle likes from the backend
  patch "/birds/:id/like", to: "birds#increment_likes"
end
