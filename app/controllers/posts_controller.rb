class PostsController < ApplicationController
  
  respond_to :html

  # List all posts
  #
  # @return [undefined]
  #
  # @api public
  def index
    respond_with posts
  end

  # Edit a post
  #
  # @return [undefined]
  #
  # @api public
  def edit
    respond_with existing_post
  end

  # Show a post
  #
  # @return [undefined]
  #
  # @api public
  def show
    respond_with existing_post
  end

  # New post
  #
  # @return [undefined]
  #
  # @api public
  def new
    respond_with new_post
  end

  # Create post
  #
  # @return [undefined]
  #
  # @api public
  def create
    post      = Post.new(params[:post])
    post.user = current_user
    if post.save
      redirect_to posts_url
    end
  end

  # Update post
  #
  # @return [undefined]
  #
  # @api public
  def update
    post = existing_post
    if post.update_attributes(params[:post])
      redirect_to posts_url
    end
  end

  # Delete post
  #
  # @return [undefined]
  #
  # @api public
  def destroy
    post = existing_post
    post.destroy
    redirect_to posts_url
  end
end

private

  # A list of published posts
  #
  # @return [ActiveRecord::Collection<Post>]
  #
  # @api private
  def posts
    posts = Post.all
  end

  # A post with given id
  #
  # @return [ActiveRecord::Post]
  #
  # @api private
  def existing_post
    post = Post.find(params[:id])
  end
  
  # A new post
  #
  # @return [ActiveRecord::Post]
  #
  # @api private
  def new_post
    new_post = Post.new
  end
  
  # Create new post
  #
  # @return [ActiveRecord::Post]
  #
  # @api private
  def create_post
    create_post = Post.new(params[:post])
  end
  
  # Returns the curent logged in user
  #
  # @return [ActiveRecord::User]
  #
  # @api private
  def current_user
    User.find_by_provider_and_uid(auth["provider"], auth["uid"])
  end