Rails.application.routes.draw do
  get "/", to: "pages#home", as: "root"

  get    "celebrities",          to: "celebrities#index"
  get    "celebrities/new",      to: "celebrities#new"
  post   "celebrities",          to: "celebrities#create"
  # The `show` route needs to be *after* `new` route.
  get    "celebrities/:id",      to: "celebrities#show"
  get    "celebrities/:id/edit", to: "celebrities#edit"
  patch  "celebrities/:id",      to: "celebrities#update"
  delete "celebrities/:id",      to: "celebrities#destroy"
end
