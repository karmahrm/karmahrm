# == Schema Information
#
# Table name: announcements
#
#  id                  :integer          not null, primary key
#  title               :string
#  content             :text
#  attachments_count   :integer
#  limit_to_users      :text
#  start_delivering_at :datetime
#  stop_delivering_at  :datetime
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Announcement < ActiveRecord::Base
  validates :title, presence: true
  validates :content, presence: true
  validates :start_delivering_at, date: { before: :stop_delivering_at }, allow_nil: true
  validates :stop_delivering_at, date: true, allow_nil: true
  serialize :limit_to_users
  # Associations
  has_many :announcement_attachments
  has_many :comments, class_name: 'AnnouncementComment', as: :origin
  #
  accepts_nested_attributes_for :announcement_attachments
  searchkick if KarmaHrm.search_kick_enabled?
  resourcify
end
