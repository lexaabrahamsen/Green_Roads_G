Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/rec_places" => "rec_places#index"
    get "/rec_places/:id" => "rec_places#show"
  end
  
end
