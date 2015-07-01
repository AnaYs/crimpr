class ChangeAreasAccess < ActiveRecord::Migration
  def change
    change_column :areas, :access, :text
  end
end
