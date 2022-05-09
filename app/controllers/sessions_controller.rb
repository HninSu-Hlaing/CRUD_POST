class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.find_by_email(params[:email])
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/new_post'
    else
      render :new
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end