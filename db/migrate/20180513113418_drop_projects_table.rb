class DropProjectsTable < ActiveRecord::Migration[5.0]
  def change
  	drop_table :projects do |t|
	  	t.string   "name"
	    t.string   "description"
	    t.text     "details"
	    t.string   "link"
	    t.boolean  "status"
	    t.integer  "user_id"
	    t.datetime "created_at",  null: false
	    t.datetime "updated_at",  null: false
	    t.string   "type"
	    t.index ["user_id"], name: "index_projects_on_user_id", using: :btree
	end
  end
end
