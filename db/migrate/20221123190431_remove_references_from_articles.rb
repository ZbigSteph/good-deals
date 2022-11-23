class RemoveReferencesFromArticles < ActiveRecord::Migration[7.0]
  def change
    remove_column :articles, :partner_id
  end
end
