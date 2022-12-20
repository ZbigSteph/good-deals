json.extract! article, :id, :sous_category, :label, :description, :prix, :partner
# json.url article_url(article, format: :json)
json.image_url polymorphic_url(article.image_couverture) if article.image_couverture.attached?
json.attachments article.autres_images do |attachment|
  json.filename attachment.filename
  json.url polymorphic_url(attachment)
end
