class ArticleSerializer
  include JSONAPI::Serializer
  attributes :label, :description, :prix
end
