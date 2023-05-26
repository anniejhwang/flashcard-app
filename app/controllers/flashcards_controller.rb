class FlashcardsController < ApplicationController
  def index
    @flashcards = Flashcard.all
    render :index
  end
end
