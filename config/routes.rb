Rails.application.routes.draw do
  constraints subdomain: 'api' do
    namespace :api, path: '/' do
      resources :bike_racks
    end
  end
end
