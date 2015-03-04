class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :username
      t.string :text
      t.string :email
      t.string :text

      t.timestamps null: false
    end
  end
end
