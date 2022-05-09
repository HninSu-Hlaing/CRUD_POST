class SessionsController < ApplicationController
    def new
    end
  
    def create
      @users = UsersService.findById(params[:id])
      @user = UsersService.sessionCreate(params[:email])
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @users.id
        redirect_to '/new_post', notice: "Logged in!"
      else
        flash.now[:alert] = "Email or Password is invalid"
        render "new"
      end
    end
  
    def destroy
      session[:user_id] = nil
      redirect_to root_path, notice: "Logged out!"
    end
  
  end