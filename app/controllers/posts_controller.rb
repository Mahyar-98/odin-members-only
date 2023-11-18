class PostsController < ApplicationController
    before_action :authenticate_user!

    def index
    end

    def new
        @post = current_user.posts.build
    end

    def create
        @post = current_user.posts.build(allowed_params)

        if @post.save
            redirect_to posts_path
        else
            render :new, status: :unprocessable_entity
        end
    end


    private

    def allowed_params
        params.require(:post).permit(:title, :body, :user_id)
    end
end