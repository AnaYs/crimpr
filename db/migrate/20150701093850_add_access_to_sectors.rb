class AddAccessToSectors < ActiveRecord::Migration
  def change
    add_column :sectors, :access, :text
  end
end
