class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :name
      t.text :description
      t.string :grades_distribution

      t.timestamps null: false
    end
  end
end
