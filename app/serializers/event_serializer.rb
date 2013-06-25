class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :occurs_on, :status, :description
end
