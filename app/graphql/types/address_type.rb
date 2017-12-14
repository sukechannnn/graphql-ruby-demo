Types::AddressType = GraphQL::ObjectType.define do
  name 'Address'

  field :id, !types.ID
  field :postal_code, !types.Int
  field :address, !types.String
end
