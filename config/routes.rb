Rails.application.routes.draw do
  root to: "books#index"

  get "/books", to: "books#index"
  post "/books", to: "books#create"
  get "/books/new", to: "books#new"
  get "/books/:id", to: "books#show", as:"book"
  put "/books/:id", to: "books#update"
  patch "/books/:id", to: "books#update"
  delete "/books/:id", to: "books#destroy"
  get "/books/:id/edit", to: "books#edit", as: "edit_book"
  
  get "/authors", to: "authors#index"
  post "/authors", to: "authors#create"
  get "/authors/new", to: "authors#new"
  get "/authors/:id", to: "authors#show", as:"author"
  put "/authors/:id", to: "authors#update"
  patch "/authors/:id", to: "authors#update"
  delete "/authors/:id", to: "authors#destroy"
  get "/authors/:id/edit", to: "authors#edit", as: "edit_author"

end
