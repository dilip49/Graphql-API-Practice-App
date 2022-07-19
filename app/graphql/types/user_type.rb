# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, String
    field :name, String
    field :emails, [String]
    field :posts, [Types::PostType], null: true
    field :posts_count, Integer, null: true

    field :users, [Types::UserType], null: false
     
    def users
      User.all
    end
    
    def posts_count
      object.posts.size
    end
  end
end
