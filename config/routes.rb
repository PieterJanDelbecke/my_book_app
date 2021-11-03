Rails.application.routes.draw do
  root to: "books#index"

  get "/books", to: "books#index"
  post "/books", to: "books#create"
  get "books/new", to: "books#new"
  get "books/:id", to: "books#show", as:"book"
  put "books/:id", to: "books#update"
  patch "books/:id", to: "books#update"
  delete "/books/:id", to: "books#destroy"
  # get "/listings/:id/edit", to: "lisitngs#edit", as: "edit_listing"

end
