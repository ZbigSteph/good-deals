class Commande < ApplicationRecord
  belongs_to :article
  belongs_to :partner
end
