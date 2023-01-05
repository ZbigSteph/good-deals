json.extract! commande, :id, :article, :partner, :quantite, :adresse_livraison, :created_at, :updated_at
json.image_url polymorphic_url(:article.image_couverture) if :article.image_couverture.attached?
json.url commande_url(commande, format: :json)
