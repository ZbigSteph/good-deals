class RemoveColumnFromArticles < ActiveRecord::Migration[7.0]
  def change
    remove_column :articles, :image_couverture
    remove_column :articles, :autres_images
  end
end
