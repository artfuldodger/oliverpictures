class AddPublicPathToImages < ActiveRecord::Migration
  def change
    add_column :pictures, :public_path, :string
  end
end
