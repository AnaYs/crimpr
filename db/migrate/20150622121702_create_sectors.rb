class CreateSectors < ActiveRecord::Migration
  def change
    create_table :sectors do |t|
      t.references :area, index: true, foreign_key: true
      t.string :name
      t.text :description
      t.string :cardinal_direction
      t.string :routes_grading

      t.timestamps null: false
    end
  end
end
