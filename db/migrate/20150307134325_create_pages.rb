class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.integer :djid
      # t.integer :gearid
      t.timestamps null: false
    end
  end
end
