# == Schema Information
#
# Table name: notifications
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  origin_id   :integer
#  origin_type :string
#  content     :text
#  type        :string
#  is_read     :boolean          default(FALSE)
#  path        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class NotificationSerializer < ActiveModel::Serializer
  attributes :id, :content, :is_read
end
