class CreateDjs < ActiveRecord::Migration
  def change
    create_table :djs do |t|
      t.string :name
      t.string :text
      t.string :genre
      t.string :text

      t.timestamps null: false
    end
  end
end
