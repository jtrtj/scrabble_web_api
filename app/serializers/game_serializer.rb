class GameSerializer
  include FastJsonapi::ObjectSerializer
  attribute :game_id, &:id
  attribute :scores do | game |
    game.plays.to_json
  end
end
