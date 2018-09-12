class GameSerializer
  include FastJsonapi::ObjectSerializer
  attribute :game_id, &:id
  has_many :plays
end
