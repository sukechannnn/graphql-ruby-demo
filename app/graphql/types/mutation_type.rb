Types::MutationType = GraphQL::ObjectType.define do
  name 'Mutation'

  field :updateAddress, field: Mutations::UpdateAddressMutation.field
  field :createPost, field: Mutations::CreatePostMutation.field
  field :updatePost, field: Mutations::UpdatePostMutation.field
end
