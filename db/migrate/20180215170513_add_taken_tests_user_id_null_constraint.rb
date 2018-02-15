class AddTakenTestsUserIdNullConstraint < ActiveRecord::Migration[5.1]
  def change
    change_column_null(:taken_tests, :user_id, false)
  end
end
