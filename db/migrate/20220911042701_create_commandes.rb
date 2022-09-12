class CreateCommandes < ActiveRecord::Migration[7.0]
  def change
    create_table :commandes do |t|
      t.references :article, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :quantite
      t.string :adresse_livraison

      t.timestamps
    end
  end
end
