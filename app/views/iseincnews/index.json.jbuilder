json.array!(@iseincnews) do |iseincnews|
  json.extract! iseincnews, :title, :description, :image
  json.url iseincnews_url(iseincnews, format: :json)
end
