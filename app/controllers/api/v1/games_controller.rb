class Api::V1::GamesController < ApplicationController
  def show
    @game = Game.find(params[:id])
    render json: GameSerializer.new(@game).serialized_json, status: :ok
  end
end