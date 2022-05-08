class UsersService
    class << self
        def listAll
            @users = UsersRepository.listAll
        end
        def newUser
            @user = UsersRepository.newUser
        end
        def createUser(user)
            isSaveUser = UsersRepository.createUser(user)
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