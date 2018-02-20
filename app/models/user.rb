class User < ApplicationRecord
  def tests_by_level(level)
    Test.
      joins('JOIN taken_tests ON tests.id = taken_tests.test_id').
      where('taken_tests.user_id = ?', id).
      where('tests.level = ?', level)
  end
end
