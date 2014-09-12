Rails.application.routes.draw do

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  scope '/api/v1' do

    resources :products do
      get 'index'
    end

    resources :orders do
      get 'index'
    end
  end

end
