Rails.application.routes.draw do
  get "/flashcards" => "flashcards#index"
  post "/flashcards" => "flashcards#create"
  get "/flashcards/:id" => "flashcards#show"
end
