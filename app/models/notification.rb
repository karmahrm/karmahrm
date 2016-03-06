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

class Notification < ActiveRecord::Base
  belongs_to :user
  belongs_to :origin, polymorphic: true
  scope :read, -> { where(is_read: true) }
  scope :unread, -> { where(is_read: false) }
  def read!
    update_attributes(is_read: true)
  end
end
