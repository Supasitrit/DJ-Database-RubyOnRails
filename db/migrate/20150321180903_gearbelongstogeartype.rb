class Gearbelongstogeartype < ActiveRecord::Migration
  def change
  	change_table :gears do |t|
      # t.belongs_to :geartype
      t.string :geartype_name
    end
  end
end
