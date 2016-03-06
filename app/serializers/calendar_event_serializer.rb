# == Schema Information
#
# Table name: calendar_events
#
#  id                :integer          not null, primary key
#  title             :string
#  description       :text
#  comments          :text
#  start_at          :datetime
#  end_at            :datetime
#  location_name     :string
#  location_address  :text
#  user_id           :integer
#  calendar_event_id :integer
#  context_id        :integer
#  context_type      :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class CalendarEventSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :comments, :start_at, :end_at, :location_name, :location_address
  has_one :user
  has_one :calendar_event
  has_one :context
end
