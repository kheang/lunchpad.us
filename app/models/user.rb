class User < ActiveRecord::Base
  has_and_belongs_to_many :schools
  has_many :orders
  has_many :accounts

  validates :name, presence: true
  validates :email,
            presence: true,
            uniqueness: { case_sensitive: false },
            format: { with: /\A[\w\-\.]+@[\w\-\.]+\Z/, message: "must be a valid email address" }

  has_secure_password
end
