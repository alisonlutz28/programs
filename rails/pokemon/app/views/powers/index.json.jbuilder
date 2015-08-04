json.array!(@powers) do |power|
  json.extract! power, :id, :name, :description
  json.url power_url(power, format: :json)
end
