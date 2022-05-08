class PostTblesService 
    class << self
        def listAll
            @posts = PostTblesRepository.listAll
        end
        def newPost
            @posts = PostTblesRepository.newPost
        end
        def createPost(post)
            isSavePost = PostTblesRepository.createPost(post)
        end
        def findById(id)
            @posts = PostTblesRepository.findById(id)
        end
        def deletePost(id)
            @post = PostTblesRepository.findById(id)
            PostTblesRepository.deletePost(@post)
        end
    end
end