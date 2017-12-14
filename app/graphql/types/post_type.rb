Types::PostType = GraphQL::ObjectType.define do
  name 'Post'
  
  field :id, !types.ID
  field :subject, !types.String
end
