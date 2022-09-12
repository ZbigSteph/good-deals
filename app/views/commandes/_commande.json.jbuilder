json.extract! commande, :id, :article_id, :user_id, :quantite, :adresse_livraison, :created_at, :updated_at
json.url commande_url(commande, format: :json)
