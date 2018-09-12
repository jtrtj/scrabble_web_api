class GameSerializer < SimpleDelegator
  def to_json
    { game_id: id,
    scores: get_scores }.to_json
  end

  def get_scores
     plays.map do | play |
      { user_id: play.user_id, score: play.score }
    end
  end
end