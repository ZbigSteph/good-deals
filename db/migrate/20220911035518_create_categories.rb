class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :nom_category
      t.string :icon

      t.timestamps
    end
  end
end
