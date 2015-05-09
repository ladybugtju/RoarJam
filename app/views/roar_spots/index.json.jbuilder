json.array!(@roar_spots) do |roar_spot|
  json.extract! roar_spot, :id, :name, :address, :phone, :website
  json.url roar_spot_url(roar_spot, format: :json)
end
