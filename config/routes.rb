Rails.application.routes.draw do
  get 'plants/new'
  root to: "gardens#index"
  resources :gardens, only: [ :show, :new, :create] do 
    resources :plants, only:[:new, :create, :destroy]
  end

  # GET gardens/11/plants/new
  # POST gardens/11/plants
end
