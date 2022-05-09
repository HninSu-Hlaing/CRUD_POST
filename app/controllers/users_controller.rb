class UsersController < ApplicationController
    def index
        @users = UsersService.listAll
    end
    def new
        @user = UsersService.newUser
    end
    def edit
        @users = UsersService.findById(params[:id])
    end
    def create
        @user = UsersService.create_user(user_params)
        isSaveUser = UsersService.create(user_params)
    
        if isSaveUser
            redirect_to '/login'
        else
            render :new
        end
    end
 
    def destroy
        UsersService.deleteUser(params[:id])
        redirect_to root_path
    end
    private
    def user_params
        params.require(:user).permit(:username,:email,:password)
    end
end