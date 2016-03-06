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

class AnnouncementSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :attachments_count, :limit_to_users, :start_delivering_at, :stop_delivering_at
end
