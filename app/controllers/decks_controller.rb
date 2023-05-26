class DecksController < ApplicationController
  def index
    @decks = Deck.all
    render :index
  end

  def create
    @deck = Deck.create(
      title: params[:title],
    )
    render :show
  end

  def show
    @deck = Deck.find_by(id: params[:id])
    render :show
  end
end
