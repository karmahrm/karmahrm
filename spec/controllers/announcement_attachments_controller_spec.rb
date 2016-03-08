# == Schema Information
#
# Table name: announcement_attachments
#
#  id                      :integer          not null, primary key
#  announcement_id         :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  attachment_file_name    :string
#  attachment_content_type :string
#  attachment_file_size    :integer
#  attachment_updated_at   :datetime
#

require 'rails_helper'

RSpec.describe AnnouncementAttachmentsController, type: :controller do
end
