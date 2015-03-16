class AddBuyNow < ActiveRecord::Migration
  def change
  	change_table :gears do |t|
      t.string :buylink
    end
  end
end
