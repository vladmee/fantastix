json.array!(@posts) do |post|
  json.extract! post, :id, :title, :content, :date, :likes
  json.url post_url(post, format: :json)
end
