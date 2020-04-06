class CreateAdmins < ActiveRecord::Migration[6.0]
  def change
    create_table :admins do |t|
      t.string :name
      t.integer :cwid
      t.string :phone_number
      t.string :email
      t.string :password
      t.boolean :isAdmin, default:false

      t.timestamps
    end
  end
end
