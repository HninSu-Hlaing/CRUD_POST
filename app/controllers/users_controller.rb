class UsersController < ApplicationController
    def index
        @users = UsersService.listAll
    end
    def new
        @user = UsersService.newUser
    end
    def create
        isSaveUser = UsersService.createUser(user_params)
        if isSaveUser
            redirect_to root_path, notice: "User was successfully created." 
        else
            render :new , notice: "Existing Email"
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