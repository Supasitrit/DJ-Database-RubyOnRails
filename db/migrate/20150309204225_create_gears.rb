class CreateGears < ActiveRecord::Migration
  drop_table :gears
  def change
    create_table :gears do |t|
      t.string :name
      t.string :description
      t.integer :geartype_id
      t.integer :dj_id
      
      t.timestamps null: false
    end
  end
end
