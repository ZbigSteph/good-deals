class CreatePartners < ActiveRecord::Migration[7.0]
  def change
    create_table :partners do |t|
      t.string :libelle
      t.string :logo
      t.string :telephone
      t.string :email
      t.string :ville
      t.string :pays
      t.string :quartier

      t.timestamps
    end
  end
end
