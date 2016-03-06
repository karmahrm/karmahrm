class AnnouncementAttachmentSerializer < ActiveModel::Serializer
  attributes :id
  has_one :announcement
end
