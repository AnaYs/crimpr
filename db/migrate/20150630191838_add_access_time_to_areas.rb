class AddAccessTimeToAreas < ActiveRecord::Migration
  def change
    add_column :areas, :access_time, :string
  end
end
