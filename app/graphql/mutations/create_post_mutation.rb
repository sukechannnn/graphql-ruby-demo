Mutations::CreatePostMutation = GraphQL::Relay::Mutation.define do
  name 'CreatePost'

  input_field :subject, !types.String

  return_field :post, !Types::PostType

  resolve ->(_obj, inputs, ctx) {
    begin
      post = ctx[:current_user].posts.build
      post.subject = inputs.subject
      post.save
    rescue => e
      return GraphQL::ExecutionError.new(e.message)
    end

    { post: post }
  }
end
