json.array!(@announcement_comments) do |announcement_comment|
  json.extract! announcement_comment, :id
  json.url announcement_comment_url(announcement_comment, format: :json)
end
