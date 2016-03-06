json.array!(@announcements) do |announcement|
  json.extract! announcement, :id, :title, :content, :attachments_count, :limit_to_users, :start_delivering_at, :stop_delivering_at
  json.url announcement_url(announcement, format: :json)
end
