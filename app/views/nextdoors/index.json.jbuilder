json.array!(@nextdoors) do |nextdoor|
  json.extract! nextdoor, :id, :chef, :title, :notes
  json.url nextdoor_url(nextdoor, format: :json)
end
