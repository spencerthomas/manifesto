class CreateTestprojects < ActiveRecord::Migration[5.0]
  def change
    create_table :testprojects do |t|
      t.string :title
      t.string :description
      t.string :detail
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
