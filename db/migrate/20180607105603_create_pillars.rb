class CreatePillars < ActiveRecord::Migration[5.0]
  def change
    create_table :pillars do |t|
      t.string :name
      t.string :image
      t.integer :time
      t.integer :income
      t.text :vision
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
