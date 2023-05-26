Rails.application.routes.draw do
  get "/flashcards" => "flashcards#index"
  post "/flashcards" => "flashcards#create"
  get "/flashcards/:id" => "flashcards#show"
  patch "/flashcards/:id" => "flashcards#update"
  delete "/flashcards/:id" => "flashcards#destroy"

  get "/decks" => "decks#index"
  post "/decks" => "decks#create"
end
