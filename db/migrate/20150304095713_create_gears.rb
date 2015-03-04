class CreateGears < ActiveRecord::Migration
  def change
    create_table :gears do |t|
      t.string :type
      t.string :text
      t.string :name
      t.string :text
      t.string :details
      t.string :text

      t.timestamps null: false
    end
  end
end
