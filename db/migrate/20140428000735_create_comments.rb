class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :picture, index: true
      t.string :name
      t.text :comment

      t.timestamps
    end
  end
end
