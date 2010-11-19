class HomeController < ApplicationController
  def index
    @posts = Post.limit(5).order("created_at")
  end
end
