class AddAccessTimeToSectors < ActiveRecord::Migration
  def change
     add_column :sectors, :access_time, :string
  end
end
