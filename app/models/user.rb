class User < ApplicationRecord
  has_many :taken_tests
  has_many :tests, through: :taken_tests
  has_many :created_tests, class_name: 'Test', foreign_key: 'user_id'

  scope :tests_by_level, -> (user_id, level) do
      Test.joins(:users).
      where(taken_tests: {user_id: user_id}).
      where(tests: {level: level})
    end
end
