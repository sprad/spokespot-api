Rails.application.routes.draw do
  constraints subdomain: 'api' do
    namespace :api, path: '/' do
      namespace :v1 do
        resources :bike_racks
      end
    end
  end
end
