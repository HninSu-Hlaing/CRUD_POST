class PostTblesService 
    class << self
        def listAll
            @posts = PostTblesRepository.listAll
        end
        def newPost
            @posts = PostTblesRepository.newPost
        end
        def save(post)
            isSave = PostTblesRepository.create(post)
          end
      
          def createPost(post)
            PostTblesRepository.createPost(post)
          end
      
        def findById(id)
            @posts = PostTblesRepository.findById(id)
        end
        def updatePost(id,post_form)
            @post = PostTblesRepository.findById(id)
            isUpdatePost = PostTblesRepository.updatePost(@post,post_form)
        end
        def deletePost(id)
            @post = PostTblesRepository.findById(id)
            PostTblesRepository.deletePost(@post)
        end
        def import(file)
            PostTblesRepository.import(file)
        end
    end
end