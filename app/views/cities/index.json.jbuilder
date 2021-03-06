json.array!(@cities) do |city|
  json.extract! city, :id, :name, :timezone, :country
  json.url city_url(city, format: :json)
end
