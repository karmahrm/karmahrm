# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  failed_attempts        :integer          default(0), not null
#  unlock_token           :string
#  locked_at              :datetime
#  username               :string
#  first_name             :string
#  last_name              :string
#  is_active              :boolean          default(TRUE)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  avatar_file_name       :string
#  avatar_content_type    :string
#  avatar_file_size       :integer
#  avatar_updated_at      :datetime
#

class User < ActiveRecord::Base
  rolify
  devise :database_authenticatable,
         # :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable,
         :lockable,
         :timeoutable,
         :omniauthable
  has_attached_file :avatar, styles: { medium: '300x300>', thumb: '100x100>' },
                             default_url: '/assets/:style/missing.png'
  has_many :notifications
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  acts_as_messageable
  acts_as_marker
  has_many :identities
  belongs_to :role, polymorphic: true
  searchkick if KarmaHrm.search_kick_enabled?

  def name
    first_name + '  ' + last_name
  end

  def mailboxer_email(_object)
    email
  end

  def employee
    role
  end

  def has_provider?(provider)
    identities.where(provider: provider).present?
  end

  def self.find_for_oauth(auth, signed_in_resource = nil)
   # Get the identity and user if they exist
   identity = Identity.find_for_oauth(auth)
   if signed_in_resource.present?
      identity.user = signed_in_resource
      identity.save
   else
      identity.user ||= User.new
   end
   identity.user
  end

  def has_provider?(provider)
    identities.where(provider: provider).present?
  end
end
