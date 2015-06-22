class AddLocationToAreas < ActiveRecord::Migration
  def change
    add_column :areas, :location, :string
  end
end
