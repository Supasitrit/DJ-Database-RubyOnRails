class DjsGears < ActiveRecord::Migration
  def change
  	create_table :djs_gears do |t|
  		t.belongs_to :dj, :gear
  		t.timestamps
  	end
  end
end
