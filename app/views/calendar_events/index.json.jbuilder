json.array!(@calendar_events) do |calendar_event|
  json.extract! calendar_event, :id, :title, :description, :comments, :start_at, :end_at, :location_name, :location_address, :user_id, :calendar_event_id, :context_id, :context_type
  json.url calendar_event_url(calendar_event, format: :json)
end
