json.array!(@taquillas) do |taquilla|
  json.extract! taquilla, :id, :pelicula, :valoracion, :comentario
  json.url taquilla_url(taquilla, format: :json)
end
