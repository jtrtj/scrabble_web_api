class GameSerializer
  include FastJsonapi::ObjectSerializer
  has_many :plays, serializer: :play, object_method_name: :scores
end
