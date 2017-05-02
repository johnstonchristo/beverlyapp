class PostsController < ApplicationController
before_action :authorise, only: [:new, :create]

  def index
  end

  def show
    @post = Post.find_by(id: params["id"])
  end

  def new
    @post = Post.new
    irb
  end

  def edit
  end

  def create
    post = Post.new(post_params)
    post.journal = @current_journal
    post.save

    redirect_to post_path(post)
  end

private

def post_params
  params.require(:post).permit(:post_title, :post_content)
end

def authorise
  unless @current_user
  flash[:error] = "You need to be logged in for that"
  redirect_to "/login"

  end
end

end
