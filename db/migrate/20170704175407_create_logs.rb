class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.integer :user_id
      t.integer :contact_id
      t.datetime :call_date
      t.string :duration
      t.float :amount
      t.timestamps null: false
    end
  end
end
