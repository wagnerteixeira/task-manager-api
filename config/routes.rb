require 'api_version_constraints'

Rails.application.routes.draw do
  #devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #namespace :api, defaults: { format: :json }, constraints: { subdomain: 'api' }, path: "/" do
  namespace :api, defaults: { format: :json }, path: '/' do
    namespace :v1, path: '/', constraints: ApiVersionConstraint.new(version: 1, default: true) do
      resources :users, only: [:show, :create] 
    end
  end
  
end


# require 'api_version_constraints'

# Rails.application.routes.draw do
#   devise_for :users
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#   namespace :api, defaults: { format: :json }, path: "/" do  
#     namespace :v1, path: "/", constraints: ApiVersionConstraint.new(version: 1, default: true) do
#       resources :users, only: [:show] 
#     end
#   end  
# end