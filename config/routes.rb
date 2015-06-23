Rails.application.routes.draw do
  constraints subdomain: 'api' do
    namespace :api, path: '/' do
      namespace :beta do
        resources :bike_racks
      end
    end
  end
end
