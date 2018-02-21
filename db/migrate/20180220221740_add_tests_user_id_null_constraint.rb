class AddTestsUserIdNullConstraint < ActiveRecord::Migration[5.1]
  def change
    change_column_null(:tests, :user_id, false)
  end
end
