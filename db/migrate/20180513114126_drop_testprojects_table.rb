class DropTestprojectsTable < ActiveRecord::Migration[5.0]
	  def change
	  	drop_table :testprojects 
	  end

	  def down
	  	fail ActiveRecord::IrreversibleMigration 
	  end
end
