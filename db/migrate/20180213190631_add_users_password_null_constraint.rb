class AddUsersPasswordNullConstraint < ActiveRecord::Migration[5.1]
  def change
    change_column_null(:users, :password, false)
  end
end
