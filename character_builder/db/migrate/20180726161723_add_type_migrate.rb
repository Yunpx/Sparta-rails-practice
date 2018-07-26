class AddTypeMigrate < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :type, :string
  end
end
