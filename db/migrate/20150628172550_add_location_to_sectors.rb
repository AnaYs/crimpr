class AddLocationToSectors < ActiveRecord::Migration
  def change
    add_column :sectors, :location, :string
  end
end
