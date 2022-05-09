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
        def findById(id)
            @users = UsersRepository.findById(id)
        end
        def sessionCreate(email)
            UsersRepository.sesionCreate(email)
        end
        def deleteUser(id)
            @user = UsersRepository.findById(id)
            UsersRepository.deleteUser(@user)
        end
    end
end