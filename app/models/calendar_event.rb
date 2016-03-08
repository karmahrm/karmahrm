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

class CalendarEvent < ActiveRecord::Base
  belongs_to :creator, class_name: 'User', foreign_key: :user_id
  belongs_to :calendar_event
  belongs_to :context, polymorphic: true
  # Validations
  validates :title, presence: true
  validates :description, presence: true
  validates :start_at, date: { before: :end_at }, allow_nil: true
  validates :end_at, date: true, allow_nil: true
  scope :on_day, ( lambda do |day|
      where( "start_at <= ? AND end_at>= ?",day,day )
    end
  )
  include Rails.application.routes.url_helpers
  def to_ics
    cal = Icalendar::Calendar.new
    cal.event do |e|
      e.dtstart     = start_at # Icalendar::Values::Date.new('20050428')
      e.dtend       = end_at
      e.summary     = title
      e.description = description
      e.ip_class    = 'PRIVATE'
      e.url = calendar_event_url(self)
    end
    cal.to_ical
  end
  def range
    start_at.to_date .. end_at.to_date
  end
  def self.events_in_the_date(date)
    where("start_at <= #{date} AND end_at>= #{date}")
  end
end
