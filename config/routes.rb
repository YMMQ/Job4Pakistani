Rails.application.routes.draw do

  root 	'pages#home'
 	get 	'pages/about'
  get 	'pages/contact'

  devise_for :users, :controllers => { :registrations => :registrations }

  resources :organizations
  resources :work_fields
  resources :degres
  resources :institutes
  resources :cities
  resources :users do
  	resources :userinfos
  	resources :educations
	  resources :experiences
  end
  resources :advertises do
  	resources :jobs
	end



end
