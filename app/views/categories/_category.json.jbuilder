json.extract! category, :id, :nom_category, :icon, :cible
json.image_url polymorphic_url(category.image) if category.image.attached?
json.url category_url(category, format: :json)
