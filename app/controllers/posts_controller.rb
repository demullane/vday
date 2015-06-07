class PostsController < ApplicationController

  def create
    @post = Post.create(post_params)
    if @post.save
      render json: @post.to_json
    end
  end

end
