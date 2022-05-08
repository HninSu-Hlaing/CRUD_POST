class PostTblesController < ApplicationController
    def index
        @posts = PostTblesService.listAll
    end
    def new
        @post = PostTblesService.newPost
    end
    def create
        isSavePost = PostTblesService.createPost(post_params)
        if isSavePost
            redirect_to '/posts'
        else
            render :new
        end
    end
    def destroy
        PostTblesService.deletePost(params[:id])
        redirect_to '/posts'
    end
    private
    def post_params
        params.require(:post_tble).permit(:title,:description,:status,:created_user_id)
    end
end