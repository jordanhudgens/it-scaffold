Rails.application.routes.draw do
	get 'privacy-policy', to: 'static#privacy_policy', as: 'privacy_policy'
  root to: 'static#home'
end
