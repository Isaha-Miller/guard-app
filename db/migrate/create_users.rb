class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :last_name, null: false
      t.string :first_name, null: false
      t.string :cwid
      t.string :phone_number
      t.string :email, null: false 
      # Add fields that let Rails automatically keep track
      # of when users are added or modified:
      t.timestamps
    end
  end
  
    def down
      drop_table :users
    end
end