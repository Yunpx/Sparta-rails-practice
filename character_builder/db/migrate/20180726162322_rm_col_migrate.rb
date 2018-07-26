class RmColMigrate < ActiveRecord::Migration[5.2]
  def change
    remove_columns :characters, :type
  end
end
