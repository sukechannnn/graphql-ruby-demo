Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  field :user, !Types::UserType do
    resolve ->(_obj, _args, ctx) {
      ctx[:current_user]
    }
  end
end
