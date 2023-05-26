class FlashcardsController < ApplicationController
  def index
    @flashcards = Flashcard.all
    render :index
  end

  def create
    @flashcard = Flashcard.create(
      question: params[:question],
      answer: params[:answer],
    )
    render :show
  end
end
