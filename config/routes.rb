Rails.application.routes.draw do
  get "/flashcards" => "flashcards#index"
  post "/flashcards" => "flashcards#create"
end
