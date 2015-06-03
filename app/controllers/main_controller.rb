class MainController < ApplicationController

before_action :authenticate_user!

  def index
  	@posts = Post.all.order("create_at_DESC")
  end

  def show
  end

  def new
    @profiles = listing.new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end


end

end