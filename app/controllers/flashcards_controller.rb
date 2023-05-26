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

  def show
    @flashcard = Flashcard.find_by(id: params[:id])
    render :show
  end

  def update
    @flashcard = Flashcard.find_by(id: params[:id])
    @flashcard.update(
      question: params[:question] || @flashcard.question,
      answer: params[:answer] || @flashcard.answer,
    )
    render :show
  end
end
