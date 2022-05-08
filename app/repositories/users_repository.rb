class UsersRepository
    class << self
        def listAll
            @users = User.all
        end
        def newUser
            @users = User.new
        end
      
        def createUser(user)
            @user = User.new(user)
            isSaveUser = @user.save
        end
        def findById(id)
            @user = User.find(id)
        end
        def sesionCreate(email)
            user = User.find_by_email(email)
        end
        def deleteUser(user)
            user.destroy
        end

    end
end