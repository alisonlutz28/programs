json.array!(@clubs) do |club|
  json.extract! club, :id, :name, :city, :state
  json.url club_url(club, format: :json)
end
