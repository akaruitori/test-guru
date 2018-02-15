class User < ApplicationRecord
  def tests_by_level(level)
    Test.
      joins('JOIN taken_tests ON tests.id = taken_tests.test_id').
      where('user_id = ? AND level = ?', id, level)
  end
end
