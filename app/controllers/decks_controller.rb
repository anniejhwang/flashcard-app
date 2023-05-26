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

  def update
    @deck = Deck.find_by(id: params[:id])
    @deck.update(
      title: params[:title] || @deck.title,
    )
    render :show
  end
end
