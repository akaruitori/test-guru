class User < ApplicationRecord
  has_many :taken_tests
  has_many :tests, through: :taken_tests
  has_many :created_tests, class_name: 'Test', foreign_key: 'user_id'

  validates :email, presence: true
end
