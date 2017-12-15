Types::MutationType = GraphQL::ObjectType.define do
  name 'Mutation'

  field :updateAddress, field: Mutations::UpdateAddressMutation.field
end
