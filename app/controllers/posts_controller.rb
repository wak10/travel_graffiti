class PostsController < ApplicationController

  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new

    if params[:latitude].present? && params[:longitude].present?
      register
    end
  end
  
  def create
  end
  
  def show
    @hash = Gmaps4rails.build_markers(@post) do |post, marker|
      marker.lat place.latitude
      marker.lng place.longitude
      marker.infowindow place.adress
    end
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to posts_path
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end
  
  private

  def register
    @post.latitude = params[:latitude]
    @post.longitude = params[:longitude]

    @post.save
  end

  
  def post_params
    params.require(:post).permit(:message, :address, :latitude, :longitude)
  end
end
