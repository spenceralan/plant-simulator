Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "plant#show", as: "home"

  post "new" => "plant#new", as: :new_plant
  post "water" => "plant#water", as: :water_plant
  post "sun" => "plant#sun", as: :sun_plant
  post "fertilize" => "plant#fertilize", as: :fertilize_plant
end
