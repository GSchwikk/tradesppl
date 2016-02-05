class CreateCategories < ActiveRecord::Migration
  
  def change
    create_table :categories do |t|
      t.string :name
      t.timestamps null: false
  	end

    create_table :profiles_categories, id: false do |t|
      t.belongs_to :category, index: true
      t.belongs_to :profile, index: true
    end

  end
end
