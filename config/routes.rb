Rails.application.routes.draw do
  resources :blogs
  resources :leads, except: [:new, :edit, :update]
	get 'privacy-policy', to: 'static#privacy_policy', as: 'privacy_policy'
  root to: 'static#home'
end
