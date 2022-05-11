class UsersService
    class << self
        def listAll
            @users = UsersRepository.listAll
        end
        def newUser
            @user = UsersRepository.newUser
        end
        def create(user)
            isSaveUser = UsersRepository.create(user)
          end
      
          def create_user(user)
            UsersRepository.create_user(user)
          end
      
        def sessionCreate(email)
            UsersRepository.sesionCreate(email)
        end
        def findById(id)
            @user = UsersRepository.findById(id)
        end
        def update(id,user_form)
            @user = UsersRepository.findById(id)
            updateUser = UsersRepository.update(@user,user_form)
        end
        def deleteUser(id)
            @user = UsersRepository.findById(id)
            UsersRepository.deleteUser(@user)
        end
        def set_user(id)
            @user = UsersRepository.findById(id)
        end
    end
end