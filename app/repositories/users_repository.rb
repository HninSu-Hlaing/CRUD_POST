class UsersRepository
    class << self
        def listAll
            @users = User.all
        end
        def newUser
            @users = User.new
        end
      
        def create(user)
            @user = User.new(user)
            isSaveUser = @user.save
          end
      
          def create_user(user)
            @user = User.new(user)
          end
        def findById(id)
            @user = User.find(id)
        end
      
        def deleteUser(user)
            user.destroy
        end

    end
end