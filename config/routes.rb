Library::Application.routes.draw do
  match "site/isbn", to: "site#isbn", via: [:get, :post], as: :isbn_validator
  root to: "site#index"
end
