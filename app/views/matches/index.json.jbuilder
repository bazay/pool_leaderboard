json.array!(@matches) do |match|
  json.extract! match, :id, :result, :winner_id, :loser_id
  json.url match_url(match, format: :json)
end
