class ApplicationController < ActionController::Base
  add_flash_types :success, :info, :warning, :danger
  before_action :require_login
  before_action :set_search

  def set_search
    @q = Post.ransack(params[:q])
    @posts = @q.result(distinct: true).includes(:user).order(created_at: :desc).page(params[:page])
  end

  def not_authenticated
    redirect_to login_url
    flash[:danger] = 'Please login. or Create Account'
  end
end
