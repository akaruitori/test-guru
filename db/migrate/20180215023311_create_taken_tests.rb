class CreateTakenTests < ActiveRecord::Migration[5.1]
  def change
    create_table :taken_tests do |t|
      t.integer :test_id
      t.integer :user_id

      t.timestamps
    end
  end
end
