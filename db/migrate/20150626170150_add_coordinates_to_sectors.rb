class AddCoordinatesToSectors < ActiveRecord::Migration
  def change
    add_column :sectors, :latitude, :float
    add_column :sectors, :longitude, :float
  end
end
