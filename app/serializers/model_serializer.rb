class ModelSerializer < ActiveModel::Serializer
  attributes :name
  self.root = false
end
