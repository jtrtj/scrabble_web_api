require 'rails_helper'

describe 'api/v1' do
  context '/games/:id' do
    it 'will return the status of the game with the id provided' do
      josh = User.create(id: 1, name: "Josh")
      sal = User.create(id: 2, name: "Sal")

      game = Game.create(player_1: josh, player_2: sal)

      josh.plays.create(game: game, word: "sal", score: 3)
      josh.plays.create(game: game, word: "zoo", score: 12)
      sal.plays.create(game: game, word: "josh", score: 14)
      sal.plays.create(game: game, word: "no", score: 2)

      
      get '/api/v1/games/1'
      response = JSON.parse(response.body)
      expect(repsonse).to have_key("game_id")
      expect(repsonse).to have_key("scores")
    end
  end
end