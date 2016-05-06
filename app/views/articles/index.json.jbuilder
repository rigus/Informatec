json.array!(@articles) do |article|
  json.extract! article, :id, :titulo, :autor, :link, :resumen
  json.url article_url(article, format: :json)
end
