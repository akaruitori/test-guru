class User < ApplicationRecord
  has_many :taken_tests
  has_many :tests, through: :taken_tests
  has_many :created_tests, class_name: 'Test', foreign_key: 'user_id'

  def tests_by_level(level)
    Test.
      joins('JOIN taken_tests ON tests.id = taken_tests.test_id').
      where('taken_tests.user_id = ?', id).
      where('tests.level = ?', level)
  end
end
