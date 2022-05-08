class PostTblesRepository
    class << self
        def listAll
            @posts = PostTble.all
        end
        def newPost
            @posts = PostTble.new
        end
        def createPost(post)
            @post = PostTble.new(post)
            isSavePost = @post.save
        end
        def findById(id)
            @post = PostTble.find(id)
        end
        def deletePost(post)
            post.destroy
        end
    end
end