# == Schema Information
#
# Table name: roles
#
#  id         :integer          not null, primary key
#  name       :string
#  activities :string           default([]), is an Array
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Role < ActiveRecord::Base
  has_and_belongs_to_many :users
  validates :name, presence: { strict: true }
end
# class Role
#   include ActiveModel::Model
#   include ActiveModel::Associations
#   attr_accessor :name
# end
