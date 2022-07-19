class Mutations::CreatePost < Mutations::BaseMutation
  description "Create Post"

  argument :title, String, required: true
  argument :body, String, required: true
  argument :user_id, Integer, required: true
  
  field :post, Types::PostType, null: false
  field :errors, [String], null: false

  def resolve(title:, body:, user_id:)
    post = Post.new(title: title, body: body, user_id: user_id)

    if(post.save)
      { post: post, errors: [] }
    else
      binding.pry
      { post: nil, errors: post.errors.full_messages }
    end
  end
end