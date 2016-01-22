class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name
      t.decimal :price
      
      t.timestamps
    end
  end
end
