class AddAccessToAreas < ActiveRecord::Migration
  def change
    add_column :areas, :access, :string
  end
end
