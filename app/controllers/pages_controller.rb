class PagesController < ApplicationController
  def home
    @posts = Post.paginate(page: params[:page], :per_page => 30).order('created_at DESC')
  end
end
