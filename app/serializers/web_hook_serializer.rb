class WebHookSerializer < ActiveModel::Serializer
  attributes :id, :type, :url
  has_one :resource
  has_one :user
end
