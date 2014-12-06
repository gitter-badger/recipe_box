Rails.application.routes.draw do
  ressources :recipes

  root "recipes#index"
end
