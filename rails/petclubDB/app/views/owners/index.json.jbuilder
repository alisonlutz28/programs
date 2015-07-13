json.array!(@owners) do |owner|
  json.extract! owner, :id, :name, :age, :bio, :club_id
  json.url owner_url(owner, format: :json)
end
