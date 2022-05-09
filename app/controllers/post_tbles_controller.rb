class PostTblesController < ApplicationController
    def index
        @posts = PostTblesService.listAll
    end
    def new
        @post = PostTblesService.newPost
    end
    def edit
        @posts = PostTblesService.findById(params[:id])
    end
    def create
        params[:post_tble][:user_id] = current_user.id
        @post = PostTblesService.createPost(post_params)
        isSave = PostTblesService.save(post_params)
        if isSave
          redirect_to '/post_list'
        else
          render :new
        end
    end
   
    def edit
        @post = PostTblesService.findById(params[:id])
      end
    def update
        isUpdatePost = PostTblesService.updatePost(params[:id],post_params)
        if isUpdatePost
            redirect_to '/post_list'
        else
            render :edit
        end
    end
    def destroy
        PostTblesService.deletePost(params[:id])
        redirect_to '/post_list'
    end
    private
    def post_params
        params.require(:post_tble).permit(:title,:description,:status,:user_id)
    end
end