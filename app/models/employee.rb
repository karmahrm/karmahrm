# == Schema Information
#
# Table name: employees
#
#  id                   :integer          not null, primary key
#  employee_id          :string
#  date_of_birth        :date
#  gender               :string
#  mobile               :string
#  date_of_join         :date
#  date_of_leaving      :date
#  date_of_confirmation :date
#  is_active            :boolean          default(TRUE)
#  marital_status       :string
#  employment_status    :string
#  city                 :string
#  nationality          :string
#  private_email        :integer
#  zipcode              :string
#  referrer_id          :integer
#  manager_id           :integer
#  country_id           :string
#  user_id              :integer
#  department_id        :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Employee < ActiveRecord::Base
   # Associations
   belongs_to :user, dependent: :destroy
   belongs_to :department
   has_many :teams, through: :team_membership
   has_many :tasks
   belongs_to :referrer, class_name: 'Employee'
   belongs_to :manager, class_name: 'Employee'
   has_many :subordinates, class_name: 'Employee', foreign_key: 'manager_id'
   has_many :hooks, dependent: :destroy, class_name: 'EmployeeHook'
   validates_inclusion_of :gender, in: %w( male female ), allow_nil: true
   validates_inclusion_of :marital_status, in: %w( single married divorced widowed ), allow_nil: true
   # Delegates
   delegate :first_name, to: :user
   delegate :last_name, to: :user
   delegate :email, to: :user
   # callbacks
   before_save :create_user
   # validations
   validates :employee_id, uniqueness: true
   validates :employee_id, presence: true
   # nested attributes
   accepts_nested_attributes_for :user
   # scopes
   scope :active, -> { where(is_active: true) }
   scope :inactive, -> { where(is_active: false) }
   scope :birth_day, -> { where(date_of_birth: Date.today) }
   # attr_accessor :country_id
   # custom
   scope :search_import, -> { includes(:user) }
   searchkick if KarmaHrm.search_kick_enabled?
   def create_user
      # do nothing
    end

   def name
      first_name + last_name
   end

   def inactivate
      self.is_active = true
      save!
   end

   def activate
      self.is_active = false
      save!
   end

   def age
    end

   def experience_in_this_company
   end

   def hook_attrs
     {
       name: name,
       email: email
     }
   end

   def self.to_csv
     require 'csv'
     attributes = %w(id email name)
     CSV.generate(headers: true) do |csv|
       csv << attributes
       all.each do |user|
         csv << attributes.map { |attr| user.send(attr) }
       end
     end
   end
end
