json.array!(@trainers) do |trainer|
  json.extract! trainer, :id, :name, :location, :age, :creature_id
  json.url trainer_url(trainer, format: :json)
end
