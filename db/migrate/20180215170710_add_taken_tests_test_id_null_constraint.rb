class AddTakenTestsTestIdNullConstraint < ActiveRecord::Migration[5.1]
  def change
    change_column_null(:taken_tests, :test_id, false)
  end
end
