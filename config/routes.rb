Rails.application.routes.draw do
  get "/healthcheck", to: proc { [200, {}, ["OK"]] }
  namespace 'api' do
    resources :users do
      resources :companies
    end
    resources :packages do
      resources :operating_statements do
        resources :operating_statement_fields
      end
      member do
        get 'full_package'
        put 'update_images'
        get 'rented_units'
        get 'sold_properties'
      end
      resources :package_sold_properties
      resources :package_rented_units
    end
    resources :sold_properties
    resources :rented_units
    resources :properties do
      resources :property_units
    end
    resources :addresses
    post 'authenticate', to: '/api/authentication#authenticate'
    post 'passwords/request_reset', to: 'passwords#request_reset'
    post 'passwords/reset', to: 'passwords#reset'
    get 'user/customer_portal_url', to: 'users#pabbly_redirect'
    post 'user/activate', to: 'users#activate'
    post 'user/subscription_changed', to: 'users#subscription_changed'
  end
end
