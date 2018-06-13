class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.string :link
      t.string :image
      t.boolean :active
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
