Types::AddressInputType = GraphQL::InputObjectType.define do
  name 'AddressInput'

  argument :postal_code, !types.Int
  argument :address, !types.String
end
