class MemberSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :joined
end
