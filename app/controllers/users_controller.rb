class UsersController < ApplicationController
    def list
        @users = UsersService.listAll
    end
    def new
        @user = UsersService.newUser
    end
    def edit
        @users = UsersService.findById(params[:id])
    end
    def show
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
    def update
        updateUser = UsersService.update(params[:id],user_params)
          if updateUser
            redirect_to user_list_path, notice: "User was successfully updated."
          
          else
            render :edit
          
          end
    
      end
    def destroy
        UsersService.deleteUser(params[:id])
        redirect_to '/user_list'
    end
    def search
        @dob = params["dob"]
        @name = params["name"]
        @email = params["email"]
        @phone = params["phone"]
        @address = params["address"]
        @type = params["type"]
        if @dob.present?
            @users = User.where(birthday: @dob)
        elsif @name.present?
            @users = User.where(username: @name)
        
        elsif @email.present?
            @users = User.where(email: @email)
        
        elsif @address.present?
            @users = User.where(address: @address)
        
        elsif @type.present?
            @users = User.where(user_type: @type)
        
        elsif @phone.present?
            @users = User.where(phone: @phone)
        end
        render "list"
    end
    private
    def user_params
        params.require(:user).permit(:id,:username,:email,:password,:user_type,:phone,:address,:birthday)
    end
end