Rails.application.routes.draw do
  root 'dice_rolls#new'
  resources :dice_rolls, only: [:new, :create]
end
