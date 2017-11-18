class CreateMessaages < ActiveRecord::Migration[5.1]
  def change
    create_table :messaages do |t|
      t.string :msg
      t.integer :user_id
      t.integer :chatroom_id

      t.timestamps
    end
  end
end
