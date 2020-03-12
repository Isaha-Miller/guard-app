class CreateAdmins < ActiveRecord::Migration[6.0]
  def change
    create_table :admins do |t|
      t.string :name
      t.integer :cwid
      t.string :phone_number
      t.string :email
      t.boolean :isAdmin

      t.timestamps
    end
  end
end
