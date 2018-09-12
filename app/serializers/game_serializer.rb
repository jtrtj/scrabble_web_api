class GameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :scores
end
